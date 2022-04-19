part of pack_settings;

enum GameStateLoadingStatuses {
  settings,
  migratingOldData,
}

// TODO(arenukvern): relocate it to json
const gameLoadingStatusesTitles = <GameStateLoadingStatuses, LocalizedText>{
  GameStateLoadingStatuses.migratingOldData: LocalizedText(
    en: '✨ Migrating old data..',
    ru: '✨ Обновляем старые данные..',
    it: '✨ Migrazione di vecchi dati..',
  ),
  GameStateLoadingStatuses.settings: LocalizedText(
    en: '✨ Loading settings..',
    ru: '✨ Загружаются настройки..',
    it: '✨ Caricamento impostazioni..',
  ),
};
