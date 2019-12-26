--
-- 表的結構 `cmf_admin_menu`
--

CREATE TABLE IF NOT EXISTS `cmf_admin_menu` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父菜單id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '菜單類型;1:有界面可訪問菜單,2:無界面可訪問菜單,0:只作為菜單',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '狀態;1:顯示,0:不顯示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '應用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名稱',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '額外參數',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜單名稱',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜單圖標',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '備註',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`),
  KEY `controller` (`controller`)
  ) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COMMENT='後臺菜單表';

--
-- 轉存表中的數據 `cmf_admin_menu`
--

INSERT INTO `cmf_admin_menu` (`id`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`) VALUES
(1, 0, 0, 1, 20, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心'),
(2, 1, 1, 1, 10000, 'admin', 'Hook', 'index', '', '鉤子管理', '', '鉤子管理'),
(3, 2, 1, 0, 10000, 'admin', 'Hook', 'plugins', '', '鉤子插件管理', '', '鉤子插件管理'),
(4, 2, 2, 0, 10000, 'admin', 'Hook', 'pluginListOrder', '', '鉤子插件排序', '', '鉤子插件排序'),
(5, 2, 1, 0, 10000, 'admin', 'Hook', 'sync', '', '同步鉤子', '', '同步鉤子'),
(6, 0, 0, 1, 0, 'admin', 'Setting', 'default', '', '設置', 'cogs', '系統設置入口'),
(7, 6, 1, 1, 50, 'admin', 'Link', 'index', '', '友情鏈接', '', '友情鏈接管理'),
(8, 7, 1, 0, 10000, 'admin', 'Link', 'add', '', '添加友情鏈接', '', '添加友情鏈接'),
(9, 7, 2, 0, 10000, 'admin', 'Link', 'addPost', '', '添加友情鏈接提交保存', '', '添加友情鏈接提交保存'),
(10, 7, 1, 0, 10000, 'admin', 'Link', 'edit', '', '編輯友情鏈接', '', '編輯友情鏈接'),
(11, 7, 2, 0, 10000, 'admin', 'Link', 'editPost', '', '編輯友情鏈接提交保存', '', '編輯友情鏈接提交保存'),
(12, 7, 2, 0, 10000, 'admin', 'Link', 'delete', '', '刪除友情鏈接', '', '刪除友情鏈接'),
(13, 7, 2, 0, 10000, 'admin', 'Link', 'listOrder', '', '友情鏈接排序', '', '友情鏈接排序'),
(14, 7, 2, 0, 10000, 'admin', 'Link', 'toggle', '', '友情鏈接顯示隱藏', '', '友情鏈接顯示隱藏'),
(15, 6, 1, 1, 10, 'admin', 'Mailer', 'index', '', '郵箱配置', '', '郵箱配置'),
(16, 15, 2, 0, 10000, 'admin', 'Mailer', 'indexPost', '', '郵箱配置提交保存', '', '郵箱配置提交保存'),
(17, 15, 1, 0, 10000, 'admin', 'Mailer', 'template', '', '郵件模板', '', '郵件模板'),
(18, 15, 2, 0, 10000, 'admin', 'Mailer', 'templatePost', '', '郵件模板提交', '', '郵件模板提交'),
(19, 15, 1, 0, 10000, 'admin', 'Mailer', 'test', '', '郵件發送測試', '', '郵件發送測試'),
(20, 6, 1, 0, 10000, 'admin', 'Menu', 'index', '', '後臺菜單', '', '後臺菜單管理'),
(21, 20, 1, 0, 10000, 'admin', 'Menu', 'lists', '', '所有菜單', '', '後臺所有菜單列表'),
(22, 20, 1, 0, 10000, 'admin', 'Menu', 'add', '', '後臺菜單添加', '', '後臺菜單添加'),
(23, 20, 2, 0, 10000, 'admin', 'Menu', 'addPost', '', '後臺菜單添加提交保存', '', '後臺菜單添加提交保存'),
(24, 20, 1, 0, 10000, 'admin', 'Menu', 'edit', '', '後臺菜單編輯', '', '後臺菜單編輯'),
(25, 20, 2, 0, 10000, 'admin', 'Menu', 'editPost', '', '後臺菜單編輯提交保存', '', '後臺菜單編輯提交保存'),
(26, 20, 2, 0, 10000, 'admin', 'Menu', 'delete', '', '後臺菜單刪除', '', '後臺菜單刪除'),
(27, 20, 2, 0, 10000, 'admin', 'Menu', 'listOrder', '', '後臺菜單排序', '', '後臺菜單排序'),
(28, 20, 1, 0, 10000, 'admin', 'Menu', 'getActions', '', '導入新後臺菜單', '', '導入新後臺菜單'),
(29, 6, 1, 1, 30, 'admin', 'Nav', 'index', '', '導航管理', '', '導航管理'),
(30, 29, 1, 0, 10000, 'admin', 'Nav', 'add', '', '添加導航', '', '添加導航'),
(31, 29, 2, 0, 10000, 'admin', 'Nav', 'addPost', '', '添加導航提交保存', '', '添加導航提交保存'),
(32, 29, 1, 0, 10000, 'admin', 'Nav', 'edit', '', '編輯導航', '', '編輯導航'),
(33, 29, 2, 0, 10000, 'admin', 'Nav', 'editPost', '', '編輯導航提交保存', '', '編輯導航提交保存'),
(34, 29, 2, 0, 10000, 'admin', 'Nav', 'delete', '', '刪除導航', '', '刪除導航'),
(35, 29, 1, 0, 10000, 'admin', 'NavMenu', 'index', '', '導航菜單', '', '導航菜單'),
(36, 35, 1, 0, 10000, 'admin', 'NavMenu', 'add', '', '添加導航菜單', '', '添加導航菜單'),
(37, 35, 2, 0, 10000, 'admin', 'NavMenu', 'addPost', '', '添加導航菜單提交保存', '', '添加導航菜單提交保存'),
(38, 35, 1, 0, 10000, 'admin', 'NavMenu', 'edit', '', '編輯導航菜單', '', '編輯導航菜單'),
(39, 35, 2, 0, 10000, 'admin', 'NavMenu', 'editPost', '', '編輯導航菜單提交保存', '', '編輯導航菜單提交保存'),
(40, 35, 2, 0, 10000, 'admin', 'NavMenu', 'delete', '', '刪除導航菜單', '', '刪除導航菜單'),
(41, 35, 2, 0, 10000, 'admin', 'NavMenu', 'listOrder', '', '導航菜單排序', '', '導航菜單排序'),
(42, 1, 1, 1, 10000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表'),
(43, 42, 2, 0, 10000, 'admin', 'Plugin', 'toggle', '', '插件啟用禁用', '', '插件啟用禁用'),
(44, 42, 1, 0, 10000, 'admin', 'Plugin', 'setting', '', '插件設置', '', '插件設置'),
(45, 42, 2, 0, 10000, 'admin', 'Plugin', 'settingPost', '', '插件設置提交', '', '插件設置提交'),
(46, 42, 2, 0, 10000, 'admin', 'Plugin', 'install', '', '插件安裝', '', '插件安裝'),
(47, 42, 2, 0, 10000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新'),
(48, 42, 2, 0, 10000, 'admin', 'Plugin', 'uninstall', '', '卸載插件', '', '卸載插件'),
(49, 110, 0, 1, 10000, 'admin', 'User', 'default', '', '管理組', '', '管理組'),
(50, 49, 1, 1, 10000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理'),
(51, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色'),
(52, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交'),
(53, 50, 1, 0, 10000, 'admin', 'Rbac', 'roleEdit', '', '編輯角色', '', '編輯角色'),
(54, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleEditPost', '', '編輯角色提交', '', '編輯角色提交'),
(55, 50, 2, 0, 10000, 'admin', 'Rbac', 'roleDelete', '', '刪除角色', '', '刪除角色'),
(56, 50, 1, 0, 10000, 'admin', 'Rbac', 'authorize', '', '設置角色權限', '', '設置角色權限'),
(57, 50, 2, 0, 10000, 'admin', 'Rbac', 'authorizePost', '', '角色授權提交', '', '角色授權提交'),
(58, 0, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站'),
(59, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'restore', '', '回收站還原', '', '回收站還原'),
(60, 58, 2, 0, 10000, 'admin', 'RecycleBin', 'delete', '', '回收站徹底刪除', '', '回收站徹底刪除'),
(61, 6, 1, 1, 10000, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL規則管理'),
(62, 61, 1, 0, 10000, 'admin', 'Route', 'add', '', '添加路由規則', '', '添加路由規則'),
(63, 61, 2, 0, 10000, 'admin', 'Route', 'addPost', '', '添加路由規則提交', '', '添加路由規則提交'),
(64, 61, 1, 0, 10000, 'admin', 'Route', 'edit', '', '路由規則編輯', '', '路由規則編輯'),
(65, 61, 2, 0, 10000, 'admin', 'Route', 'editPost', '', '路由規則編輯提交', '', '路由規則編輯提交'),
(66, 61, 2, 0, 10000, 'admin', 'Route', 'delete', '', '路由規則刪除', '', '路由規則刪除'),
(67, 61, 2, 0, 10000, 'admin', 'Route', 'ban', '', '路由規則禁用', '', '路由規則禁用'),
(68, 61, 2, 0, 10000, 'admin', 'Route', 'open', '', '路由規則啟用', '', '路由規則啟用'),
(69, 61, 2, 0, 10000, 'admin', 'Route', 'listOrder', '', '路由規則排序', '', '路由規則排序'),
(70, 61, 1, 0, 10000, 'admin', 'Route', 'select', '', '選擇URL', '', '選擇URL'),
(71, 6, 1, 1, 0, 'admin', 'Setting', 'site', '', '網站信息', '', '網站信息'),
(72, 71, 2, 0, 10000, 'admin', 'Setting', 'sitePost', '', '網站信息設置提交', '', '網站信息設置提交'),
(73, 6, 1, 0, 10000, 'admin', 'Setting', 'password', '', '密碼修改', '', '密碼修改'),
(74, 73, 2, 0, 10000, 'admin', 'Setting', 'passwordPost', '', '密碼修改提交', '', '密碼修改提交'),
(75, 6, 1, 1, 10000, 'admin', 'Setting', 'upload', '', '上傳設置', '', '上傳設置'),
(76, 75, 2, 0, 10000, 'admin', 'Setting', 'uploadPost', '', '上傳設置提交', '', '上傳設置提交'),
(77, 6, 1, 0, 10000, 'admin', 'Setting', 'clearCache', '', '清除緩存', '', '清除緩存'),
(78, 6, 1, 1, 40, 'admin', 'Slide', 'index', '', '幻燈片管理', '', '幻燈片管理'),
(79, 78, 1, 0, 10000, 'admin', 'Slide', 'add', '', '添加幻燈片', '', '添加幻燈片'),
(80, 78, 2, 0, 10000, 'admin', 'Slide', 'addPost', '', '添加幻燈片提交', '', '添加幻燈片提交'),
(81, 78, 1, 0, 10000, 'admin', 'Slide', 'edit', '', '編輯幻燈片', '', '編輯幻燈片'),
(82, 78, 2, 0, 10000, 'admin', 'Slide', 'editPost', '', '編輯幻燈片提交', '', '編輯幻燈片提交'),
(83, 78, 2, 0, 10000, 'admin', 'Slide', 'delete', '', '刪除幻燈片', '', '刪除幻燈片'),
(84, 78, 1, 0, 10000, 'admin', 'SlideItem', 'index', '', '幻燈片頁面列表', '', '幻燈片頁面列表'),
(85, 84, 1, 0, 10000, 'admin', 'SlideItem', 'add', '', '幻燈片頁面添加', '', '幻燈片頁面添加'),
(86, 84, 2, 0, 10000, 'admin', 'SlideItem', 'addPost', '', '幻燈片頁面添加提交', '', '幻燈片頁面添加提交'),
(87, 84, 1, 0, 10000, 'admin', 'SlideItem', 'edit', '', '幻燈片頁面編輯', '', '幻燈片頁面編輯'),
(88, 84, 2, 0, 10000, 'admin', 'SlideItem', 'editPost', '', '幻燈片頁面編輯提交', '', '幻燈片頁面編輯提交'),
(89, 84, 2, 0, 10000, 'admin', 'SlideItem', 'delete', '', '幻燈片頁面刪除', '', '幻燈片頁面刪除'),
(90, 84, 2, 0, 10000, 'admin', 'SlideItem', 'ban', '', '幻燈片頁面隱藏', '', '幻燈片頁面隱藏'),
(91, 84, 2, 0, 10000, 'admin', 'SlideItem', 'cancelBan', '', '幻燈片頁面顯示', '', '幻燈片頁面顯示'),
(92, 84, 2, 0, 10000, 'admin', 'SlideItem', 'listOrder', '', '幻燈片頁面排序', '', '幻燈片頁面排序'),
(93, 6, 1, 1, 10000, 'admin', 'Storage', 'index', '', '文件存儲', '', '文件存儲'),
(94, 93, 2, 0, 10000, 'admin', 'Storage', 'settingPost', '', '文件存儲設置提交', '', '文件存儲設置提交'),
(95, 6, 1, 1, 20, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理'),
(96, 95, 1, 0, 10000, 'admin', 'Theme', 'install', '', '安裝模板', '', '安裝模板'),
(97, 95, 2, 0, 10000, 'admin', 'Theme', 'uninstall', '', '卸載模板', '', '卸載模板'),
(98, 95, 2, 0, 10000, 'admin', 'Theme', 'installTheme', '', '模板安裝', '', '模板安裝'),
(99, 95, 2, 0, 10000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新'),
(100, 95, 2, 0, 10000, 'admin', 'Theme', 'active', '', '啟用模板', '', '啟用模板'),
(101, 95, 1, 0, 10000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '啟用模板'),
(102, 95, 1, 0, 10000, 'admin', 'Theme', 'fileSetting', '', '模板文件設置', '', '模板文件設置'),
(103, 95, 1, 0, 10000, 'admin', 'Theme', 'fileArrayData', '', '模板文件數組數據列表', '', '模板文件數組數據列表'),
(104, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件數組數據添加編輯', '', '模板文件數組數據添加編輯'),
(105, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件數組數據添加編輯提交保存', '', '模板文件數組數據添加編輯提交保存'),
(106, 95, 2, 0, 10000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件數組數據刪除', '', '模板文件數組數據刪除'),
(107, 95, 2, 0, 10000, 'admin', 'Theme', 'settingPost', '', '模板文件編輯提交保存', '', '模板文件編輯提交保存'),
(108, 95, 1, 0, 10000, 'admin', 'Theme', 'dataSource', '', '模板文件設置數據源', '', '模板文件設置數據源'),
(109, 95, 1, 0, 10000, 'admin', 'Theme', 'design', '', '模板設計', '', '模板設計'),
(110, 0, 0, 1, 10, 'user', 'AdminIndex', 'default', '', '用戶管理', 'group', '用戶管理'),
(111, 49, 1, 1, 10000, 'admin', 'User', 'index', '', '管理員', '', '管理員管理'),
(112, 111, 1, 0, 10000, 'admin', 'User', 'add', '', '管理員添加', '', '管理員添加'),
(113, 111, 2, 0, 10000, 'admin', 'User', 'addPost', '', '管理員添加提交', '', '管理員添加提交'),
(114, 111, 1, 0, 10000, 'admin', 'User', 'edit', '', '管理員編輯', '', '管理員編輯'),
(115, 111, 2, 0, 10000, 'admin', 'User', 'editPost', '', '管理員編輯提交', '', '管理員編輯提交'),
(116, 111, 1, 0, 10000, 'admin', 'User', 'userInfo', '', '個人信息', '', '管理員個人信息修改'),
(117, 111, 2, 0, 10000, 'admin', 'User', 'userInfoPost', '', '管理員個人信息修改提交', '', '管理員個人信息修改提交'),
(118, 111, 2, 0, 10000, 'admin', 'User', 'delete', '', '管理員刪除', '', '管理員刪除'),
(119, 111, 2, 0, 10000, 'admin', 'User', 'ban', '', '停用管理員', '', '停用管理員'),
(120, 111, 2, 0, 10000, 'admin', 'User', 'cancelBan', '', '啟用管理員', '', '啟用管理員'),
(121, 0, 1, 0, 10000, 'user', 'AdminAsset', 'index', '', '資源管理', 'file', '資源管理列表'),
(122, 121, 2, 0, 10000, 'user', 'AdminAsset', 'delete', '', '刪除文件', '', '刪除文件'),
(123, 110, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用戶組', '', '用戶組'),
(124, 123, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用戶', '', '本站用戶'),
(125, 124, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用戶拉黑', '', '本站用戶拉黑'),
(126, 124, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用戶啟用', '', '本站用戶啟用'),
(127, 123, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用戶', '', '第三方用戶'),
(128, 127, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '刪除第三方用戶綁定', '', '刪除第三方用戶綁定'),
(129, 6, 1, 1, 10000, 'user', 'AdminUserAction', 'index', '', '用戶操作管理', '', '用戶操作管理'),
(130, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'edit', '', '編輯用戶操作', '', '編輯用戶操作'),
(131, 129, 2, 0, 10000, 'user', 'AdminUserAction', 'editPost', '', '編輯用戶操作提交', '', '編輯用戶操作提交'),
(132, 129, 1, 0, 10000, 'user', 'AdminUserAction', 'sync', '', '同步用戶操作', '', '同步用戶操作');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_asset`
--

CREATE TABLE IF NOT EXISTS `cmf_asset` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用戶id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '文件大小,單位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '上傳時間',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '下載次數',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟壹碼',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路徑,相對於upload目錄,可以為url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件後綴名,不包括點',
  `more` text COMMENT '其它詳細信息,JSON格式',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='資源表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_auth_access`
--

CREATE TABLE IF NOT EXISTS `cmf_auth_access` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '規則唯壹英文標識,全小寫',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '權限規則分類,請加應用前綴,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='權限授權表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_auth_rule`
--

CREATE TABLE IF NOT EXISTS `cmf_auth_rule` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '規則id,自增主鍵',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否有效(0:無效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '規則所屬module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '權限規則分類，請加應用前綴,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '規則唯壹英文標識,全小寫',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '額外url參數',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '規則描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '規則附加條件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
  ) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb4 COMMENT='權限規則表';

--
-- 轉存表中的數據 `cmf_auth_rule`
--

INSERT INTO `cmf_auth_rule` (`id`, `status`, `app`, `type`, `name`, `param`, `title`, `condition`) VALUES
(1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '鉤子管理', ''),
(2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '鉤子插件管理', ''),
(3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '鉤子插件排序', ''),
(4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步鉤子', ''),
(5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '友情鏈接', ''),
(6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情鏈接', ''),
(7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情鏈接提交保存', ''),
(8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '編輯友情鏈接', ''),
(9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '編輯友情鏈接提交保存', ''),
(10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '刪除友情鏈接', ''),
(11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情鏈接排序', ''),
(12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情鏈接顯示隱藏', ''),
(13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '郵箱配置', ''),
(14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '郵箱配置提交保存', ''),
(15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '郵件模板', ''),
(16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '郵件模板提交', ''),
(17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '郵件發送測試', ''),
(18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '後臺菜單', ''),
(19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜單', ''),
(20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '後臺菜單添加', ''),
(21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '後臺菜單添加提交保存', ''),
(22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '後臺菜單編輯', ''),
(23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '後臺菜單編輯提交保存', ''),
(24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '後臺菜單刪除', ''),
(25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '後臺菜單排序', ''),
(26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '導入新後臺菜單', ''),
(27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '導航管理', ''),
(28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加導航', ''),
(29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加導航提交保存', ''),
(30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '編輯導航', ''),
(31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '編輯導航提交保存', ''),
(32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '刪除導航', ''),
(33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '導航菜單', ''),
(34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加導航菜單', ''),
(35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加導航菜單提交保存', ''),
(36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '編輯導航菜單', ''),
(37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '編輯導航菜單提交保存', ''),
(38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '刪除導航菜單', ''),
(39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '導航菜單排序', ''),
(40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', ''),
(41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', ''),
(42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件啟用禁用', ''),
(43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件設置', ''),
(44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件設置提交', ''),
(45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安裝', ''),
(46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', ''),
(47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸載插件', ''),
(48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', ''),
(49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', ''),
(50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', ''),
(51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '編輯角色', ''),
(52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '編輯角色提交', ''),
(53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '刪除角色', ''),
(54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '設置角色權限', ''),
(55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授權提交', ''),
(56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', ''),
(57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站還原', ''),
(58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站徹底刪除', ''),
(59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', ''),
(60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由規則', ''),
(61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由規則提交', ''),
(62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由規則編輯', ''),
(63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由規則編輯提交', ''),
(64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由規則刪除', ''),
(65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由規則禁用', ''),
(66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由規則啟用', ''),
(67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由規則排序', ''),
(68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '選擇URL', ''),
(69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '設置', ''),
(70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '網站信息', ''),
(71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '網站信息設置提交', ''),
(72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密碼修改', ''),
(73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密碼修改提交', ''),
(74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上傳設置', ''),
(75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上傳設置提交', ''),
(76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除緩存', ''),
(77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '幻燈片管理', ''),
(78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻燈片', ''),
(79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻燈片提交', ''),
(80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '編輯幻燈片', ''),
(81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '編輯幻燈片提交', ''),
(82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '刪除幻燈片', ''),
(83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻燈片頁面列表', ''),
(84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻燈片頁面添加', ''),
(85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻燈片頁面添加提交', ''),
(86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻燈片頁面編輯', ''),
(87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻燈片頁面編輯提交', ''),
(88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻燈片頁面刪除', ''),
(89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻燈片頁面隱藏', ''),
(90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻燈片頁面顯示', ''),
(91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻燈片頁面排序', ''),
(92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存儲', ''),
(93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存儲設置提交', ''),
(94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', ''),
(95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安裝模板', ''),
(96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸載模板', ''),
(97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安裝', ''),
(98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', ''),
(99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '啟用模板', ''),
(100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', ''),
(101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件設置', ''),
(102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件數組數據列表', ''),
(103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件數組數據添加編輯', ''),
(104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件數組數據添加編輯提交保存', ''),
(105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件數組數據刪除', ''),
(106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件編輯提交保存', ''),
(107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件設置數據源', ''),
(108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板設計', ''),
(109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理組', ''),
(110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理員', ''),
(111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理員添加', ''),
(112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理員添加提交', ''),
(113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理員編輯', ''),
(114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理員編輯提交', ''),
(115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '個人信息', ''),
(116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理員個人信息修改提交', ''),
(117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理員刪除', ''),
(118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理員', ''),
(119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '啟用管理員', ''),
(120, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '資源管理', ''),
(121, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '刪除文件', ''),
(122, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '用戶管理', ''),
(123, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用戶組', ''),
(124, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用戶', ''),
(125, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用戶拉黑', ''),
(126, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用戶啟用', ''),
(127, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用戶', ''),
(128, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '刪除第三方用戶綁定', ''),
(129, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用戶操作管理', ''),
(130, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '編輯用戶操作', ''),
(131, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '編輯用戶操作提交', ''),
(132, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用戶操作', '');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_comment`
--

CREATE TABLE IF NOT EXISTS `cmf_comment` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被回復的評論id',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '發表評論的用戶id',
  `to_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '被評論的用戶id',
  `object_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '評論內容 id',
  `like_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '點贊數',
  `dislike_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '不喜歡數',
  `floor` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '樓層數',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '評論時間',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '刪除時間',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態,1:已審核,0:未審核',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '評論類型；1實名評論',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '評論內容所在表，不帶表前綴',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '評論者昵稱',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '評論者郵箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '層級關系',
  `url` text COMMENT '原文地址',
  `content` text CHARACTER SET utf8mb4 COMMENT '評論內容',
  `more` text CHARACTER SET utf8mb4 COMMENT '擴展屬性',
  PRIMARY KEY (`id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `object_id` (`object_id`) USING BTREE,
  KEY `status` (`status`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_time` (`create_time`) USING BTREE
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='評論表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_hook`
--

CREATE TABLE IF NOT EXISTS `cmf_hook` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '鉤子類型(1:系統鉤子;2:應用鉤子;3:模板鉤子;4:後臺模板鉤子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否只允許壹個插件運行(0:多個;1:壹個)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '鉤子名稱',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '鉤子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '應用名(只有應用鉤子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系統鉤子表';

--
-- 轉存表中的數據 `cmf_hook`
--

INSERT INTO `cmf_hook` (`id`, `type`, `once`, `name`, `hook`, `app`, `description`) VALUES
(2, 1, 0, '應用開始', 'app_begin', 'cmf', '應用開始'),
(3, 1, 0, '模塊初始化', 'module_init', 'cmf', '模塊初始化'),
(4, 1, 0, '控制器開始', 'action_begin', 'cmf', '控制器開始'),
(5, 1, 0, '視圖輸出過濾', 'view_filter', 'cmf', '視圖輸出過濾'),
(6, 1, 0, '應用結束', 'app_end', 'cmf', '應用結束'),
(7, 1, 0, '日誌write方法', 'log_write', 'cmf', '日誌write方法'),
(8, 1, 0, '輸出結束', 'response_end', 'cmf', '輸出結束'),
(9, 1, 0, '後臺控制器初始化', 'admin_init', 'cmf', '後臺控制器初始化'),
(10, 1, 0, '前臺控制器初始化', 'home_init', 'cmf', '前臺控制器初始化'),
(11, 1, 1, '發送手機驗證碼', 'send_mobile_verification_code', 'cmf', '發送手機驗證碼'),
(12, 3, 0, '模板 body標簽開始', 'body_start', '', '模板 body標簽開始'),
(13, 3, 0, '模板 head標簽結束前', 'before_head_end', '', '模板 head標簽結束前'),
(14, 3, 0, '模板底部開始', 'footer_start', '', '模板底部開始'),
(15, 3, 0, '模板底部開始之前', 'before_footer', '', '模板底部開始之前'),
(16, 3, 0, '模板底部結束之前', 'before_footer_end', '', '模板底部結束之前'),
(17, 3, 0, '模板 body 標簽結束之前', 'before_body_end', '', '模板 body 標簽結束之前'),
(18, 3, 0, '模板左邊欄開始', 'left_sidebar_start', '', '模板左邊欄開始'),
(19, 3, 0, '模板左邊欄結束之前', 'before_left_sidebar_end', '', '模板左邊欄結束之前'),
(20, 3, 0, '模板右邊欄開始', 'right_sidebar_start', '', '模板右邊欄開始'),
(21, 3, 0, '模板右邊欄結束之前', 'before_right_sidebar_end', '', '模板右邊欄結束之前'),
(22, 3, 1, '評論區', 'comment', '', '評論區'),
(23, 3, 1, '留言區', 'guestbook', '', '留言區'),
(24, 2, 0, '後臺首頁儀表盤', 'admin_dashboard', 'admin', '後臺首頁儀表盤'),
(25, 4, 0, '後臺模板 head標簽結束前', 'admin_before_head_end', '', '後臺模板 head標簽結束前'),
(26, 4, 0, '後臺模板 body 標簽結束之前', 'admin_before_body_end', '', '後臺模板 body 標簽結束之前'),
(27, 2, 0, '後臺登錄頁面', 'admin_login', 'admin', '後臺登錄頁面'),
(28, 1, 1, '前臺模板切換', 'switch_theme', 'cmf', '前臺模板切換'),
(29, 3, 0, '主要內容之後', 'after_content', '', '主要內容之後'),
(32, 2, 1, '獲取上傳界面', 'fetch_upload_view', 'user', '獲取上傳界面'),
(33, 3, 0, '主要內容之前', 'before_content', 'cmf', '主要內容之前'),
(34, 1, 0, '日誌寫入完成', 'log_write_done', 'cmf', '日誌寫入完成'),
(35, 1, 1, '後臺模板切換', 'switch_admin_theme', 'cmf', '後臺模板切換'),
(36, 1, 1, '驗證碼圖片', 'captcha_image', 'cmf', '驗證碼圖片'),
(37, 2, 1, '後臺模板設計界面', 'admin_theme_design_view', 'admin', '後臺模板設計界面'),
(38, 2, 1, '後臺設置網站信息界面', 'admin_setting_site_view', 'admin', '後臺設置網站信息界面'),
(39, 2, 1, '後臺清除緩存界面', 'admin_setting_clear_cache_view', 'admin', '後臺清除緩存界面'),
(40, 2, 1, '後臺導航管理界面', 'admin_nav_index_view', 'admin', '後臺導航管理界面'),
(41, 2, 1, '後臺友情鏈接管理界面', 'admin_link_index_view', 'admin', '後臺友情鏈接管理界面'),
(42, 2, 1, '後臺幻燈片管理界面', 'admin_slide_index_view', 'admin', '後臺幻燈片管理界面'),
(43, 2, 1, '後臺管理員列表界面', 'admin_user_index_view', 'admin', '後臺管理員列表界面'),
(44, 2, 1, '後臺角色管理界面', 'admin_rbac_index_view', 'admin', '後臺角色管理界面'),
(49, 2, 1, '用戶管理本站用戶列表界面', 'user_admin_index_view', 'user', '用戶管理本站用戶列表界面'),
(50, 2, 1, '資源管理列表界面', 'user_admin_asset_index_view', 'user', '資源管理列表界面'),
(51, 2, 1, '用戶管理第三方用戶列表界面', 'user_admin_oauth_index_view', 'user', '用戶管理第三方用戶列表界面'),
(52, 2, 1, '後臺首頁界面', 'admin_index_index_view', 'admin', '後臺首頁界面'),
(53, 2, 1, '後臺回收站界面', 'admin_recycle_bin_index_view', 'admin', '後臺回收站界面'),
(54, 2, 1, '後臺菜單管理界面', 'admin_menu_index_view', 'admin', '後臺菜單管理界面'),
(55, 2, 1, '後臺自定義登錄是否開啟鉤子', 'admin_custom_login_open', 'admin', '後臺自定義登錄是否開啟鉤子'),
(64, 2, 1, '後臺幻燈片頁面列表界面', 'admin_slide_item_index_view', 'admin', '後臺幻燈片頁面列表界面'),
(65, 2, 1, '後臺幻燈片頁面添加界面', 'admin_slide_item_add_view', 'admin', '後臺幻燈片頁面添加界面'),
(66, 2, 1, '後臺幻燈片頁面編輯界面', 'admin_slide_item_edit_view', 'admin', '後臺幻燈片頁面編輯界面'),
(67, 2, 1, '後臺管理員添加界面', 'admin_user_add_view', 'admin', '後臺管理員添加界面'),
(68, 2, 1, '後臺管理員編輯界面', 'admin_user_edit_view', 'admin', '後臺管理員編輯界面'),
(69, 2, 1, '後臺角色添加界面', 'admin_rbac_role_add_view', 'admin', '後臺角色添加界面'),
(70, 2, 1, '後臺角色編輯界面', 'admin_rbac_role_edit_view', 'admin', '後臺角色編輯界面'),
(71, 2, 1, '後臺角色授權界面', 'admin_rbac_authorize_view', 'admin', '後臺角色授權界面');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_hook_plugin`
--

CREATE TABLE IF NOT EXISTS `cmf_hook_plugin` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '狀態(0:禁用,1:啟用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '鉤子名',
  `plugin` varchar(50) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系統鉤子插件表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_link`
--

CREATE TABLE IF NOT EXISTS `cmf_link` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態;1:顯示;0:不顯示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情鏈接評級',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情鏈接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情鏈接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情鏈接名稱',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情鏈接圖標',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情鏈接打開方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '鏈接與網站的關系',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
  ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情鏈接表';

--
-- 轉存表中的數據 `cmf_link`
--

INSERT INTO `cmf_link` (`id`, `status`, `rating`, `list_order`, `description`, `url`, `name`, `image`, `target`, `rel`) VALUES
(1, 1, 1, 8, 'thinkcmf官網', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_nav`
--

CREATE TABLE IF NOT EXISTS `cmf_nav` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否為主導航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '導航位置名稱',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '備註',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前臺導航位置表';

--
-- 轉存表中的數據 `cmf_nav`
--

INSERT INTO `cmf_nav` (`id`, `is_main`, `name`, `remark`) VALUES
(1, 1, '主導航', '主導航'),
(2, 0, '底部導航', '');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_nav_menu`
--

CREATE TABLE IF NOT EXISTS `cmf_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '導航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態;1:顯示;0:隱藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜單名稱',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打開方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '鏈接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '圖標',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '層級關系',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前臺導航菜單表';

--
-- 轉存表中的數據 `cmf_nav_menu`
--

INSERT INTO `cmf_nav_menu` (`id`, `nav_id`, `parent_id`, `status`, `list_order`, `name`, `target`, `href`, `icon`, `path`) VALUES
(1, 1, 0, 1, 0, '首頁', '', 'home', '', '0-1');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_option`
--

CREATE TABLE IF NOT EXISTS `cmf_option` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '是否自動加載;1:自動加載;0:不自動加載',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='全站配置表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的結構 `cmf_plugin`
--

CREATE TABLE IF NOT EXISTS `cmf_plugin` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '插件類型;1:網站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否有後臺管理,0:沒有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態;1:開啟;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '插件安裝時間',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件標識名,英文字母(惟壹)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名稱',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，帶協議',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '實現的鉤子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者網站鏈接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本號',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_recycle_bin`
--

CREATE TABLE IF NOT EXISTS `cmf_recycle_bin` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '刪除內容 id',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '創建時間',
  `table_name` varchar(60) DEFAULT '' COMMENT '刪除內容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '刪除內容名稱',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用戶id',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_role`
--

CREATE TABLE IF NOT EXISTS `cmf_role` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '狀態;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '創建時間',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '更新時間',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名稱',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '備註',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`)
  ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

--
-- 轉存表中的數據 `cmf_role`
--

INSERT INTO `cmf_role` (`id`, `parent_id`, `status`, `create_time`, `update_time`, `list_order`, `name`, `remark`) VALUES
(1, 0, 1, 1329633709, 1329633709, 0, '超級管理員', '擁有網站最高管理員權限！'),
(2, 0, 1, 1329633709, 1329633709, 0, '普通管理員', '權限由最高管理員分配！');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_role_user`
--

CREATE TABLE IF NOT EXISTS `cmf_role_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用戶id',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `user_id` (`user_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用戶角色對應表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_route`
--

CREATE TABLE IF NOT EXISTS `cmf_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '狀態;1:啟用,0:不啟用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL規則類型;1:用戶自定義;2:別名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '實際顯示的url',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_slide`
--

CREATE TABLE IF NOT EXISTS `cmf_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態,1:顯示,0不顯示',
  `delete_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '刪除時間',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻燈片分類',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分類備註',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻燈片表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_slide_item`
--

CREATE TABLE IF NOT EXISTS `cmf_slide_item` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻燈片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態,1:顯示;0:隱藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻燈片名稱',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻燈片圖片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻燈片鏈接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情鏈接打開方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻燈片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻燈片內容',
  `more` text COMMENT '擴展信息',
  PRIMARY KEY (`id`),
  KEY `slide_id` (`slide_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻燈片子項表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_theme`
--

CREATE TABLE IF NOT EXISTS `cmf_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '安裝時間',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最後升級時間',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '模板狀態,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '是否為已編譯模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主題目錄名，用於主題的維壹標識',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主題名稱',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主題版本號',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，帶協議',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '縮略圖',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主題作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者網站鏈接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持語言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主題關鍵字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主題描述',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `cmf_theme_file`
--

CREATE TABLE IF NOT EXISTS `cmf_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名稱',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相對於模板根目錄，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用戶自己後臺設置的',
  `config_more` text COMMENT '模板更多配置,來源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用戶臨時保存的配置',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的結構 `cmf_third_party_user`
--

CREATE TABLE IF NOT EXISTS `cmf_third_party_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '本站用戶id',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最後登錄時間',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'access_token過期時間',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '綁定時間',
  `login_times` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登錄次數',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '狀態;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用戶昵稱',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方唯壹碼',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方應用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最後登錄ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授權碼',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用戶id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用戶多個產品中的惟壹 id,(如:微信平臺)',
  `more` text COMMENT '擴展信息',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用戶表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user`
--

CREATE TABLE IF NOT EXISTS `cmf_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用戶類型;1:admin;2:會員',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性別;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最後登錄時間',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用戶積分',
  `coin` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '金幣',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余額',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '註冊時間',
  `user_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '用戶狀態;0:禁用,1:正常,2:未驗證',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用戶名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登錄密碼;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用戶昵稱',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用戶登錄郵箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用戶個人網址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用戶頭像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '個性簽名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最後登錄ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活碼',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用戶手機號',
  `more` text COMMENT '擴展屬性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用戶表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user_action`
--

CREATE TABLE IF NOT EXISTS `cmf_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改積分，可以為負',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金幣，可以為負',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '獎勵次數',
  `cycle_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '周期類型;0:不限;1:按天;2:按小時;3:永久',
  `cycle_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '周期時間值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用戶操作名稱',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用戶操作名稱',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在應用名或插件名等',
  `url` text COMMENT '執行操作的url',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用戶操作表';

--
-- 轉存表中的數據 `cmf_user_action`
--

INSERT INTO `cmf_user_action` VALUES ('1', '1', '1', '1', '2', '1', '用戶登錄', 'login', 'user', '');

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user_action_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_action_log` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用戶id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '訪問次數',
  `last_visit_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最後訪問時間',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '訪問對象的id,格式:不帶前綴的表名+id;如posts1表示xx_posts表裏id為1的記錄',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名稱;格式:應用名+控制器+操作名,也可自己定義格式只要不發生沖突且惟壹;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用戶ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='訪問記錄表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user_balance_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_balance_log` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用戶 id',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '創建時間',
  `change` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改余額',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '更改後余額',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '備註',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用戶余額變更日誌表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user_favorite`
--

CREATE TABLE IF NOT EXISTS `cmf_user_favorite` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0' COMMENT '用戶 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏內容的標題',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏內容的原文地址，不帶域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏內容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏實體以前所在表,不帶前綴',
  `object_id` int(10) UNSIGNED DEFAULT '0' COMMENT '收藏內容原來的主鍵id',
  `create_time` int(10) UNSIGNED DEFAULT '0' COMMENT '收藏時間',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用戶收藏表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user_login_attempt`
--

CREATE TABLE IF NOT EXISTS `cmf_user_login_attempt` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '嘗試次數',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '嘗試登錄時間',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '鎖定時間',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用戶 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用戶賬號,手機號,郵箱或用戶名',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用戶登錄嘗試表' ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user_score_log`
--

CREATE TABLE IF NOT EXISTS `cmf_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用戶 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '創建時間',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用戶操作名稱',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改積分，可以為負',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金幣，可以為負',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用戶操作積分等獎勵日誌表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_user_token`
--

CREATE TABLE IF NOT EXISTS `cmf_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用戶id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT ' 過期時間',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '創建時間',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '設備類型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用戶客戶端登錄 token 表';

-- --------------------------------------------------------

--
-- 表的結構 `cmf_verification_code`
--

CREATE TABLE IF NOT EXISTS `cmf_verification_code` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '當天已經發送成功的次數',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最後發送成功時間',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '驗證碼過期時間',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最後發送成功的驗證碼',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手機號或者郵箱',
  PRIMARY KEY (`id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='手機郵箱數字驗證碼表';


ALTER TABLE `cmf_auth_rule` CHANGE `app` `app` VARCHAR(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '規則所屬app';

ALTER TABLE `cmf_user_favorite` ADD `thumbnail` VARCHAR(100) NOT NULL DEFAULT '' COMMENT '縮略圖' AFTER `title`;

ALTER TABLE `cmf_user_favorite` CHANGE `url` `url` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收藏內容的原文地址，JSON格式';
ALTER TABLE `cmf_user_favorite` CHANGE `description` `description` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '收藏內容的描述';
ALTER TABLE `cmf_user_favorite` CHANGE `table_name` `table_name` VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '收藏實體以前所在表,不帶前綴';


CREATE TABLE `cmf_user_like` (
`id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
`user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用戶 id',
`object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '內容原來的主鍵id',
`create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '創建時間',
`table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '內容以前所在表,不帶前綴',
`url` varchar(255) NOT NULL DEFAULT '' COMMENT '內容的原文地址，不帶域名',
`title` varchar(100) NOT NULL DEFAULT '' COMMENT '內容的標題',
`thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '縮略圖',
`description` text COMMENT '內容的描述',
PRIMARY KEY (`id`),
KEY `uid` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COMMENT='用戶點贊表';

ALTER TABLE `cmf_user` CHANGE `mobile` `mobile` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '中國手機不帶國家代碼，國際手機號格式為：國家代碼-手機號';
