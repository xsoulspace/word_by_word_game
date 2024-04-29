# If you update the dart version, make sure the image is
# compatible with the busybox image.
FROM dart:3.3.1 AS build

# Resolve app dependencies.
WORKDIR /app

# Copy app source code and AOT compile it.
COPY . .

RUN dart pub get

RUN dart compile exe bin/main.dart -o bin/main

# If you update the busybox version, make sure the image is
# compatible with the dart image.
FROM busybox:1.36.1-glibc

ENV runmode=development
ENV serverid=default
ENV logging=normal
ENV role=monolith

COPY --from=build /runtime/etc /etc
COPY --from=build /runtime/lib /lib
COPY --from=build /runtime/lib64 /lib64
COPY --from=build /runtime/usr /usr
COPY --from=build /app/bin/main /app/bin/main
COPY --from=build /app/config/ config/
COPY --from=build /app/assets/ assets/
#COPY --from=build /app/generated/ generated/
COPY --from=build /app/web/ web/


EXPOSE 8100
EXPOSE 8101
EXPOSE 8102

CMD app/bin/main --mode $runmode --server-id $serverid --logging $logging --role $role
