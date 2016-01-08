# CodeIgniter-many-app
单核心，多应用程序，可公用 helpers, libraries, models, third_party

结构
"""
    system      CI框架核心
    shared      公共模块 helpers, libraries, models, third_party
    home        应用程序 (原application 默认删除 helpers, libraries, models, third_party)
    db_proxy    集成mysql读写分离,自动识别
"""

 
