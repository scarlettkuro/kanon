<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', 'closes');

/** Имя пользователя MySQL */
define('DB_USER', 'root');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', '');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '),#r0?lRz#}<(D+H$*i|T+aFw7PyY R<8}[{S|e2?xa9E`+E]r!Z_s+Fmlr[>+A`');
define('SECURE_AUTH_KEY',  '%TP$B<hICF&uFmXG` B?qS~ (87g|F.XYeR6MXd|+fS,rw/)UIn-(Z.zI,8ylHt ');
define('LOGGED_IN_KEY',    '#XY![/;HD3/Tau^(g ^A!cgLi<P(^;c4;gS5![`sh4ze?+<HZ#XvUPBG+8n]f#3k');
define('NONCE_KEY',        '`Mvt_5)9JcWO{Ur JcFWb9WALBy*]mI}3I&;#@XE>c.}[u?$yoE4L1>DuA(+mjLk');
define('AUTH_SALT',        '|=TY|M{>*|um+?]<)6 w(]WaenZE.[vWy4`bu7g(#_<gBSow^?Nbvr70BoR[.[Jv');
define('SECURE_AUTH_SALT', 'I:|sj^bs2+T.&34haLZ5UlU}#hg4@XW*G?#=KQ#4[nE@:Y|dlo~v@sD)16Z ~E5Q');
define('LOGGED_IN_SALT',   'o=r)y.Rd8 5kdsL%y#a|1TA;N@5w6kx+,%)2,h;czs8`Xg$D-*c$%]F&)QPwTPS|');
define('NONCE_SALT',       '=VBxATuTDSTHehG+mH;s=oSfj|z:Pe6IL Y*vp+5KowfJr#> ?,l]d>4,%~{$Okh');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 * 
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
