const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"图书信息","menuJump":"列表","tableName":"tushuxinxi"}],"menu":"图书信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"图书类型","menuJump":"列表","tableName":"tushuleixing"}],"menu":"图书类型管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"电子书论坛","tableName":"forum"}],"menu":"电子书论坛"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"电子书资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"图书信息列表","menuJump":"列表","tableName":"tushuxinxi"}],"menu":"图书信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["阅读","查看","新增","修改","删除"],"menu":"图书信息","menuJump":"列表","tableName":"tushuxinxi"}],"menu":"图书信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"阅读记录","menuJump":"列表","tableName":"yuedujilu"}],"menu":"阅读记录管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"图书信息列表","menuJump":"列表","tableName":"tushuxinxi"}],"menu":"图书信息模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]
    }
}
export default menu;
