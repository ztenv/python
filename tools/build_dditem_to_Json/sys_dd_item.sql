 EXEC tool_cleanobject 'nb_add_SYS_DD_ITEM' 
 GO 
 CREATE PROC nb_add_SYS_DD_ITEM 
      @DD_ID                                      VARCHAR(32)  ,
      @DD_ITEM                                    VARCHAR(32)  ,
      @DD_ITEM_NAME                               VARCHAR(128)  ,
      @INT_ORG                                    VARCHAR(5)  
 AS	 
   IF EXISTS(SELECT 1 FROM SYS_DD_ITEM  WHERE   DD_ID = @DD_ID  AND   DD_ITEM = @DD_ITEM  AND   INT_ORG = @INT_ORG  AND   INT_ORG = @INT_ORG  ) 
      DELETE SYS_DD_ITEM  WHERE   DD_ID = @DD_ID  AND   DD_ITEM = @DD_ITEM  AND   INT_ORG = @INT_ORG  AND   INT_ORG = @INT_ORG  
  
   INSERT SYS_DD_ITEM(DD_ID, DD_ITEM, DD_ITEM_NAME, INT_ORG) 
   VALUES (@DD_ID, @DD_ITEM, @DD_ITEM_NAME, @INT_ORG) 
GO  
 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '0', '查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '1', '增加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '2', '修改', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '3', '删除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_AGTORG', '012345', '金证科技33', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '01', '一码通账户开立', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '02', '证券账户开立', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '03', '账户注册资料修改', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '04', '一码通账户注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '05', '证券账户注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '06', '账户注册资料查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '07', '证券账户查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '08', '一码通账户查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '09', '首次交易日期查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '10', '账户资料核对', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '11', '证券账户使用信息维护', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '12', '合伙人信息维护', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '13', '适当性管理信息维护', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '14', '信息批量查询申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '15', '客户关键信息修改历史查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '16', '休眠账户激活', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '17', '不合格账户解除限制', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '18', '证券账户关联关系确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '19', '证券账户解除挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '20', '存量账户关联关系报送信息查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '22', '产品客户一码通账户开立', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '23', '身份信息验证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '25', '机构信息核查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '26', '不合格账户查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '0', '未发送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '1', '已发送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '2', '处理成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '3', '处理失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '4', '委托确认成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '0', '开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '1', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '2', '各类委托方式的开设和取消', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '3', '第三方存管的签约、解约、变更存管银行（使用人民币账户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '4', '挂失、解挂', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '5', '冻结、解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '6', '限制、解除限制', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '7', '合并证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '8', '更换证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '9', '密码服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '1', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '2', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '3', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '5', '休假', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '7', '开户失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '8', '销户失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'A', '不合格司法冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'C', '中登休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'E', '中登不合格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'G', '内部休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'J', '内部不合格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'L', '异常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'M', '开户中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'N', '销户中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '00', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '01', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '02', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '03', '休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '04', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '05', '禁买', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '06', '禁卖', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '11', '沪市A股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '12', '沪市B股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '13', '沪市封闭式基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '14', '沪市A股信用证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '15', '沪市衍生品合约账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '21', '深市A股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '22', '深市B股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '23', '深市封闭式基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '24', '深市A股信用证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '25', '深市衍生品合约账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '31', '全国中小企业股份转让系统账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACK_STATUS', '0', '未确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACK_STATUS', '1', '参与同步', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACK_STATUS', '2', '放弃同步', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '0', '存入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '1', '取出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '100', '证券买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '101', '证券卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '103', '新股申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '104', '新股增发', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '106', '配股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '107', '要约收购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '108', '解除要约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '110', '质押入库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '111', '质押出库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '115', '质押入库且冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '116', '质押出库且解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '140', '国债分销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '145', '债券兑付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '146', '债券兑息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '150', '回购融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '151', '回购融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '152', '转债申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '153', '转债配债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '160', '转债转股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '161', '转债回售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '162', '买断回购融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '163', '买断回购融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '164', '质押回购融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '165', '质押回购融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '170', '基金申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '180', 'ETF网下现金认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '181', 'ETF申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '182', 'ETF赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '183', 'ETF网上现金认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '184', 'ETF网下股票认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '190', '开放式基金认购(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '191', '开放式基金跨市场转托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '192', '开放式基金分红方式设定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '193', '开放式基金转换', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '194', '开放式基金申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '195', '开放式基金赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '196', '基金红利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '197', 'TA发起业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '198', '开放式基金认购(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '2', '转账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '200', '权证创设', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '201', '权证注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '202', '证券给付型认购权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '203', '证券给付型认沽权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '204', '现金结算型认购权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '205', '现金结算型认沽权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '208', 'ETF申购赎回现金差额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '209', 'ETF申购赎回现金替代多退少补', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '3', '异地存入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '300', '指定交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '301', '撤销指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '302', '回购指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '303', '回购撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '330', '证券转托管出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '340', '密码服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '345', '议案投票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '4', '异地取出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '499', '证券转换业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '5', '打印单据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '500', '新股登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '501', '股份托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '502', '合并证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '503', '更换证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '504', '红股到帐', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '505', '股息派发', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '506', '退款退息明细', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '508', '证券转托管入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '6', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '600', '司法冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '601', '司法冻结解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '602', '司法冻结续冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '603', '司法冻结轮候', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '604', '司法冻结轮候解除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '610', '证券冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '611', '证券解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '612', '证券过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '613', '股份转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '620', '证券转换', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '800', '国债买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '801', '国债卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '802', '债券摘牌', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '850', '限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZRL', '0', '资金权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZRL', '1', '交易权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_FLAG', '0', '代办证券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_FLAG', '1', '主办证券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGMT_LVL', '0', '客户级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGMT_LVL', '1', '资产账户级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGMT_LVL', '2', '交易账户级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGREEMENT_ID', '1', '标示1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGREEMENT_ID', '201', '标示201', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_CLS', '0', '普通代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_STATUS', '1', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_TYPE', '0', '公证代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_TYPE', '1', '临柜授权代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ALLOTED_OFFER', '0', '现金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ALLOTED_OFFER', '1', '提前了结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '*', '未定义', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '0', '低', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '1', '一般风险客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '2', '高', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '3', '黑名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'A', '洗钱-低风险账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'B', '洗钱-较高风险行业账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'C', '洗钱-较高风险地域账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'D', '洗钱-异常交易账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'E', '洗钱-其他中风险账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'F', '洗钱-地域高风险账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'G', '洗钱-高危人员账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'H', '洗钱-涉嫌违法、洗钱、恐怖融资账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'I', '洗钱-政治性人物账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'J', '洗钱-可疑交易账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'K', '洗钱-其他高风险账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '1', '低风险等级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '2', '中低风险等级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '3', '中风险等级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '4', '高风险等级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '5', '黑名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '0', '价格乘以数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '1', '面值份数乘以数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '2', '不计算，设值为零', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '3', '取清算数据已计算结果', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '0', '0-10万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '1', '10-30万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '2', '30-50万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '3', '50-100万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '4', '100-300万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '5', '300万以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANS_OPTION_TYPE', '0', '字符串匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANS_OPTION_TYPE', '1', '数值匹配(前闭后开)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANS_OPTION_TYPE', '2', '数字匹配(前闭后无穷大)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '00', '房地产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '01', '废品收购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '02', '进出口贸易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '03', '贵金属', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '04', '外币兑换', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '05', '旧货交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '06', '彩票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '07', '娱乐', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '08', '典当', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '09', '拍卖', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_STATUS', '0', '申报处理中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_STATUS', '1', '申报处理失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_STATUS', '2', '申报处理成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_TYPE', '0', '不校验客户日均资产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_TYPE', '1', '不校验交易日期控制', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_TYPE', '2', '两者均不校验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '0', '资金帐户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '1', '股东代码开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '10', '手机自助', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '2', '基金帐户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '3', '融资融券开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '4', '股指期货开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '5', '三方存管开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '6', '银证转帐开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '7', '网上自助', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '8', '视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '9', '双人见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '0', '柜台预约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '1', 'WEB方式预约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '2', '银行预约(无确认)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '3', '银行预约(需确认)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '4', '非现场开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '5', '非现场开户新开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '6', '非现场开户转户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '0', '深A', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '1', '沪A', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '2', '深B', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '3', '沪B', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '4', '深基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '5', '沪基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '0', '现场预约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '1', '银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '2', '网站', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '3', '社区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '4', '转介绍', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', 'b', 'OCRM', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', 'c', 'MIT', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '0', '未开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '1', '审核通过，等待开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '2', '开户成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '3', '开户失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '4', '预约过期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '5', '审核未通过，预约失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '6', '激活成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '7', '激活失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '8', '激活异常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '9', '取消成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'A', '取消失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'B', '取消异常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'C', '开户异常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'F', '开始跑批业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'G', '锁定状态', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'H', '开深A股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'I', '开深基金股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'J', '开沪A股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'K', '开沪基金股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'L', '客户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'M', '资金账户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'N', '资金密码同步', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'O', '交易密码同步', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'P', '三方存管开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'Q', '加挂深A股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'R', '加挂深基金股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'S', '加挂沪A股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'T', '加挂沪基金股东卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'U', '完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'W', '跑批失败完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', '0', '已申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', '1', '已审批', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', '2', '已拒绝', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', 'X', '预申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '0', '外围额度变更申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '1', '征信级别及授信额度调整申请', '0'
 GO  
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '2', '二次征信额度变更申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '3', '额度变更申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '4', '授信额度降级额度变更申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '0', '首次申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '2', '额度调整申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '3', '重新征信申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '5', '信用重检', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_TYPE', '0', '首次额度申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_TYPE', '2', '额度申请调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_TYPE', '3', '重新征信申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '0', '业务申请待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '1', '业务申请审核成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '2', '业务申请审核失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '3', '额度发放成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '4', '额度发放失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '5', '额度审核成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '6', '资格申请作废', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_FLAG', '0', '不归档', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_FLAG', '1', '归档', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_SEL_FLAG', '0', '不可选', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_SEL_FLAG', '1', '可选', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '0', '未开始归档', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '1', '归档失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '2', '归档成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '3', '运行中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_TYPE', '0', '增量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_TYPE', '1', '全量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ASSO_LOG_TYPE', '0', '深圳中登开户流水', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ASSO_LOG_TYPE', '1', '上海中登开户流水', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_REASON', '1', '1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_REASON', '2', '哈哈', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '00', '未审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '02', '未审核，已处理差错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '10', '已审核，无误', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '11', '已审核，差错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '12', '已审核，已处理差错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '13', '复审不通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_TYPE', '0', '审计', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_TYPE', '1', '审计跟踪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '0', '无误', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '1', '影像录入差错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '2', '柜员录入差错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '3', '填写差错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '4', '其他差错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_FLAG', '0', '不检测', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_FLAG', '1', '检测登录密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_FLAG', '2', '检测资金密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_MODE', '0', '域认证模式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_MODE', '1', '信任认证模式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_TYPE', '0', '密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_TYPE', '1', '证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_TYPE', '2', '指纹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_DEFER', '0', '否', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_DEFER', '1', '是', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_UPD_TYPE', '0', '风险测评自动更新', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_UPD_TYPE', '1', '专业投资者自动更新', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '01', '文艺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '02', '影视', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '03', '旅游', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '04', '体育', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '05', '购物', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '06', '投资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '07', '数码产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '08', '宠物', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '09', '收藏', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '10', '餐饮', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '11', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '12', '我是中国人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '222', '111', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BACKUP_MODE', '0', 'sett_before清算前备份', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BACKUP_MODE', '1', 'sett_after 清算后备份', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '1', ' 借记卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '2', ' 贷记卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '3', ' 存折', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '4', ' 证券资金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '9', ' 其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BARCODE_OUTPUT', '0', '不输出条码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BARCODE_OUTPUT', '1', ' 条码打印机输出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BATCH_CALL_TYPE', 'STKTRDSEND|50', '批量设置证券账户指定交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '0', '经济寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '1', '不寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '2', '按月寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '3', '按季寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '4', '按半年寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '5', '按年寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '1', '电子邮件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '2', '信件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '3', '柜台打印', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '4', '通过网站查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BITMAP_TYPE', '0', '黑白', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BITMAP_TYPE', '1', '灰度', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BITMAP_TYPE', '2', '彩色', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '00', '参数类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '01', '账户类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '10', '资金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '11', '客户资金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '12', '公司资金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '20', '证券业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '21', '深A交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '22', '沪A交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '23', '深B交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '24', '沪B交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '25', '三版A交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '26', '三版港交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '27', '三版美交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '30', '基金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '40', '债券业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '50', '期货业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510000', '代理中登账户业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510010', '开设股东卡(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510020', '股东资料变更(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510030', '股东卡销户\挂失\转户(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510050', '股东资料查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510060', '休眠账户激活(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510070', '不合格帐户处理(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510071', '跨市场补登记(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510080', 'B股账户指定交易(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510081', 'B股变更结算会员(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510082', '合伙人信息申报处理(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510092', 'B股帐户变更结算会员指令撤销（沪）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510180', '账户业务复核(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510190', '账户业务提交(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510200', '开设股东卡(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510210', '股东资料变更(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510220', '股东卡合并(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510230', '股东卡挂失补办(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510240', '股东卡销户(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510250', '股东资料查询(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510260', '休眠账户激活(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510270', '网络服务开通(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510280', '账户使用信息申报(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510281', '合伙人信息申报处理(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510380', '账户业务复核(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510390', '账户业务提交(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510400', '股东卡打印', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510410', '中登账户业务统计(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510415', '中登账户业务统计(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510420', '中登账户业务报送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '100000002', '顶点OTC账户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '100000003', '顶点OTC账户销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '200100110', '规范标志设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '200100121', '客户风险测评', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '200100125', '客户签署协议设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '300100030', '代理人普通资料修改', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '300100050', '代理人销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '300200010', '客户代理关系与业务设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350501010', '老三板股东开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510010', '开设股东卡(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510020', '股东资料变更(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510030', '股东卡销户\挂失\转户(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510060', '休眠账户激活(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510070', '不合格账户处理(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510071', '跨市场补登记(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510080', 'B股账户指定交易(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510081', 'B股变更结算会员(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510092', 'B股账户变更结算会员指令撤销（沪）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510200', '开设股东卡(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510210', '股东资料变更(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510220', '股东卡合并(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510230', '股东卡挂失补办(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510240', '股东卡销户(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510260', '休眠账户激活(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510270', '网络服务开通(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510280', '账户使用信息申报(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351500020', '存管银证开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351700010', '基金账户销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710027', '网厅用户密码管理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710035', '私募合格投资者资格设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710036', '专业投资者资格设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710049', '私募基金投资者办理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '353000035', '普通资料变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '353000130', '非现场开设股东卡(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '353000140', '非现场开设股东卡(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000001', '一码通账户开立', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000002', '证券账户开立(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000004', '账户注册资料修改(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000006', '一码通账户注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000007', '证券账户注销(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000012', '证券账户使用信息维护(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000022', '休眠账户激活(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000024', '不合格账户解除限制(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000026', '证券账户关联关系维护(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000028', '证券账户挂失解除(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000054', '合伙人信息维护（新）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '700101010', '客户签署协议设置（信用）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '708002009', '股票期权账户级别设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '990000151', '非居民金融账户涉税信息设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '0', '操作业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '1', '资金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '2', '证券交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '3', '基金交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '4', '债券交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '5', '期货交易业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_ACCT_TYPE', '0', '报价回购投资者账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_ACCT_TYPE', '1', '报价回购出入库账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_ACCT_TYPE', '2', '约定购回投资者账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_AGREEMENT_OPERTYPE', '0', '开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_AGREEMENT_OPERTYPE', '1', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '0', '已审核待开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '1', '已审核待注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '2', '已开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '3', '已注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '0', '待报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '1', '正报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '2', '申报成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '3', '申报失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', 'S', '额度已设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '1', '清算中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '2', '清算完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '3', '收盘作业中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BLUETOOTH_TYPE', '1', '国腾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BLUETOOTH_TYPE', '2', '华视', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '1', '姓名', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '2', '证件号码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '3', '证件类型+证件号码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '4', '身份三要素', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '5', '(姓名/曾用名/别名)+证件类别+证件号码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '6', '客户代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '7', '证件号码|姓名', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '8', '国籍', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '9', '国籍+（姓名/曾用名/别名）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', 'A', '国籍+身份三要素', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUSSHARE_FLAG', '0', '不含送股孳息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUSSHARE_FLAG', '1', '含送股孳息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUS_OFFER', '0', '现金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUS_OFFER', '1', '提前了结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BOOKSET', '1', '账户系统帐套', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BREG_STATUS', '0', '未指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BREG_STATUS', '1', '首日指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BREG_STATUS', '2', '已指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BRK_CLS', '0', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BRK_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BRK_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '01', '创业板', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '02', '港股通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '03', '私募业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '04', '柜台市场业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '05', '股票期权业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '06', '融资融券业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '07', '认购或申购场外开放式基金、基金专项子计划、资管理财产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '08', '基金转换', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '09', '基金定投', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '10', '购买投顾产品或接受投顾服务时', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '0', '不计算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '1', '系统每天预计', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '2', '系统计算随合约了结而结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '3', '系统计算定期扣收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '9', '取总部参数', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_TYPE', '0', '按收费品种独立返佣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_TYPE', '1', '按收费品种汇总返佣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_FLAG', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_FLAG', '1', '冲销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '1', '被冲锁定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '2', '已被冲销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '3', '已冻结取消', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAPITAL_ATTR', '1', '境内资本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAPITAL_ATTR', '2', '三资（合资、合作、外资）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAPITAL_ATTR', '3', '境外资本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CC_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CC_STATUS', '1', '未启用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CC_STATUS', '2', '终止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '0', '资料录入待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '1', '资料审核成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '2', '资料审核失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '3', '级别评定成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '4', '级别评定失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '5', '征信评级完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '6', '征信单作废', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', 'X', '征信调查未开始', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '0', ' 远程实时音视频', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '1', ' 视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '2', ' 双人见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '3', ' 临柜', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '00', ' 营业部选择', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '01', ' 身份验证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '02', ' 影像上传', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '03', ' 视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '04', ' 见证未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '05', ' 见证通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '06', ' 业务复核通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '07', ' 数字证书复核不通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '1', ' 证书未下载', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '2', ' 证书有效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '3', ' 证书已冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '4', ' 证书已作废', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '1', ' 个人普通软证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '10', ' 证书服务代理机构接入证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '11', ' WEB站点证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '12', ' 代码签名证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '2', ' 个人普通硬证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '3', ' 个人高级硬证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '4', ' 企业普通软证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '5', ' 企业普通硬证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '6', ' 企业高级硬证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '7', ' 企业员工普通软证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '8', ' 企业员工普通硬证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '9', ' 企业员工高级硬证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CFG_TYPE', '0', '无需对账证券类别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CFG_TYPE', '1', '对账余额类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '0', '柜台委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '1', 'WEB柜台委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '2', '电话委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '3', '刷卡委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '4', '热键委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '5', '网上委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '6', '手机委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '7', '银行委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '8', '远程委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '9', '其它委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'H', '百度委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'a', '金杖自助', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'b', '非存管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'c', '手机炒股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'd', '顶点委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_HIST', '0', '不检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_HIST', '1', '检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '0', '出生日期的一部分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '1', '证件号码的一部分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '2', '某一字符出现占总长度一半以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '3', '顺序递增或递减', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '4', '弱密表控制值', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '5', '移动电话的一部分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '6', '固定电话的一部分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '7', '某一个字符连续出现长度占总长度的一半或以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '8', '密码中仅有两种字符，且相同字符未中断出现', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '9', '重复字符或字符串', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', 'A', '连续递增或递减字符串', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '0', '转帐银行方有,但证券方没有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '1', '转帐证券方有,但银行方没有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '2', '转帐双方都有,但数据不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '3', '帐户双方状态不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_ACCT', '0', '不检验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_ACCT', '1', '需校验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_PWD', '0', '不检验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_PWD', '1', '需校验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '0', '功能不需要复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '1', '总部复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '2', '营业部复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '3', '总部复核营业部优先', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FUND_PWD', '0', '不检验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FUND_PWD', '1', '需校验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_GRP_FLAG', '0', '非分组参数', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_GRP_FLAG', '1', '分组参数', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '0', '不校验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '1', '需校验身份证ID和客户名称', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '2', '只需校验身份证ID', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '3', '只需校验客户名称', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_RESULT', '0', '不通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_RESULT', '1', '通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_RESULT', '3', '待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STAT', '1', '登记结算有而KBSS清算没有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STAT', '2', '登记结算没有而KBSS清算有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STAT', '3', '登记结算与KBSS清算不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '0', '未复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '1', '复核中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '2', '已通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '3', '已撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '4', '已过期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '5', '待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '6', '通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '7', '未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '8', '审核中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STK_TYPE', 'A', '证券可用数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STK_TYPE', 'B', '证券余额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STK_TYPE', 'P', '证券未交收数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TWO_STATUS', '0', '未开立', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TWO_STATUS', '1', '开立失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TWO_STATUS', '2', '开立成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '0', '无需复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '1', '柜员同机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '2', '柜员异机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '3', '岗位同机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '4', '岗位异机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHNL_CLS', '0', '柜台委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHNL_CLS', '1', '现场自助委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHNL_CLS', '2', '非现场自助委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '0', '能源', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '1', '原材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '2', '初级产品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '3', '投资品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '4', '耐用消费品制造', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '5', '医疗卫生', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '6', '经常性消费品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '7', '贸易和零售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '8', '社会服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '9', '交通运输和仓储业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'A', '金融业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'B', '房地产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'C', '信息技术业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'D', '公用事业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'E', '综合类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'Z', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '1', '50人以下', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '2', '50-500人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '3', '500－3000人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '4', '3000-10000人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '5', '10000人以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '1', '1000以下', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '2', '1000-2000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '3', '2000-5000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '4', '5000-10000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '5', '10000以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '0', '能源', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '1', '原材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '2', '初级产品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '3', '投资品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '4', '耐用消费品制造', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '5', '医疗卫生', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '6', '经常性消费品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '7', '贸易和零售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '8', '社会服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '9', '交通运输和仓储业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'A', '金融业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'B', '房地产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'C', '信息技术业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'D', '公用事业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'E', '综合类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'Z', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '01', '能源', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '02', '原材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '03', '初级产品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '04', '投资品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '05', '耐用消费品制造', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '06', '医疗卫生', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '07', '经常性消费品工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '08', '贸易和零售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '09', '社会服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '10', '交通运输和仓储业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '11', '金融业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '12', '房地产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '13', '信息技术业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '14', '公用事业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '15', '综合类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '16', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '0', '党政机关', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '1', '企事业单位', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '2', '农民', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '3', '个体工商户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '4', '学生', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '5', '证券从业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '6', '军人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '7', '无业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'A', '文教科卫专业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'B', '行政企事业单位工人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'C', '离退休', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'D', '废品、旧货、进出口行业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'E', '珠宝、黄金等贵金属行业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'F', '彩票、娱乐、典当、拍卖行业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'Z', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '0', '流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '1', '第一次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '2', '第二次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '3', '第三次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '4', '第四次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '5', '第五次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '6', '第六次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '7', '第七次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '8', '第八次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '9', '第九次权益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'A', '未上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'F', '法人配售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'J', '基金配售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'N', '非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'Q', '基金配售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'Z', '基金配售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ABW', '阿鲁巴', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AFG', '阿富汗', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AGO', '安哥拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AIA', '安圭拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ALB', '阿尔巴尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AND', '安道尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ANT', '荷属安的列斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ARE', '阿拉伯联合酋长国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ARG', '阿根廷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ARM', '亚美尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ASM', '美属萨摩亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ATA', '南极洲', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ATF', '法属南部领土', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ATG', '安提瓜和巴布达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AUS', '澳大利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AUT', '奥地利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AZE', '阿塞拜疆', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BDI', '布隆迪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BEL', '比利时', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BEN', '贝宁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BFA', '布基纳法索', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BGD', '孟加拉国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BGR', '保加利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BHR', '巴林', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BHS', '巴哈马', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BIH', '波斯尼亚和黑塞哥维那', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BLR', '白俄罗斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BLZ', '伯利兹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BMU', '百慕大', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BOL', '玻利维亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BRA', '巴西', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BRB', '巴巴多斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BRN', '文莱', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BTN', '不丹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BVT', '布维岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BWA', '博茨瓦纳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CAF', '中非', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CAN', '加拿大', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CCK', '科科斯(基林)群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CHE', '瑞士', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CHL', '智利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CHN', '中国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CIV', '科特迪瓦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CMR', '喀麦隆', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CNI', '海峡群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COD', '刚果（金）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COG', '刚果', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COK', '库克群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COL', '哥伦比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COM', '科摩罗', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CPV', '佛得角', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CRI', '哥斯达黎加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CSR', '圣诞岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CTN', '中国台湾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CUB', '古巴', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CYM', '开曼群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CYP', '塞浦路斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CZE', '捷克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DEU', '德国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DJI', '吉布提', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DMA', '多米尼克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DNK', '丹麦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DOM', '多米尼加共和国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DZA', '阿尔及利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ECU', '厄瓜多尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'EGY', '埃及', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ERI', '厄立特里亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ESH', '西撒哈拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ESP', '西班牙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'EST', '爱沙尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ETH', '埃塞俄比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FIN', '芬兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FJI', '斐济', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FLK', '马尔维纳斯群岛(福克兰群岛)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FRA', '法国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FRO', '法罗群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FSM', '密克罗尼西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GAB', '加蓬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GBR', '英国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GEO', '格鲁吉亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GHA', '加纳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GIB', '直布罗陀', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GIN', '几内亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GLP', '瓜德罗普', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GMB', '冈比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GNB', '几内亚比绍', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GNQ', '赤道几内亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GRC', '希腊', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GRD', '格林纳达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GRL', '格陵兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GTM', '危地马拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUF', '法属圭亚那', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUM', '关岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUS', '格恩西', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUY', '圭亚那', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HKG', '香港', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HMD', '赫德岛和麦克唐纳岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HND', '洪都拉斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HRV', '克罗地亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HTI', '海地', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HUN', '匈牙利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IDN', '印度尼西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IND', '印度', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'INE', '尼维斯岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IOM', '马恩岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IOT', '英属印度洋领土', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IRL', '爱尔兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IRN', '伊朗', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IRQ', '伊拉克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ISL', '冰岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ISR', '以色列', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ITA', '意大利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JAM', '牙买加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JOR', '约旦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JPN', '日本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JSY', '泽西', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KAZ', '哈萨克斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KEN', '肯尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KGZ', '吉尔吉斯斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KHM', '柬埔寨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KIR', '基里巴斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KNA', '圣基茨和尼维斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KOR', '韩国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KWT', '科威特', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LAO', '老挝', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LBN', '黎巴嫩', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LBR', '利比里亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LBY', '利比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LCA', '圣卢西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LIE', '列支敦士登', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LKA', '斯里兰卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LSO', '莱索托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LTU', '立陶宛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LUX', '卢森堡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LVA', '拉脱维亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MAC', '澳门', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MAN', '曼岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MAR', '摩洛哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MCO', '摩纳哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MDA', '摩尔多瓦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MDG', '马达加斯加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MDV', '马尔代夫', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MEX', '墨西哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MHL', '马绍尔群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MKD', '马斯顿', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MLI', '马里', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MLT', '马耳他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MMR', '缅甸', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MNG', '蒙古', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MNP', '北马里亚纳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MOZ', '莫桑比克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MRT', '毛里塔尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MSR', '蒙特塞拉特', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MTQ', '马提尼克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MUS', '毛里求斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MWI', '马拉维', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MYS', '马来西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MYT', '马约特', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NAM', '纳米比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NCL', '新喀里多尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NER', '尼日尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NFK', '诺福克岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NGA', '尼日利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NIC', '尼加拉瓜', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NIU', '纽埃', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NLA', '荷兰属地', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NLD', '荷兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NOR', '挪威', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NPL', '尼泊尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NRU', '瑙鲁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NZL', '新西兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'OTH', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'OWN', '阿曼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PAK', '巴基斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PAN', '巴拿马', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PCN', '皮特凯恩群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PER', '秘鲁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PHL', '菲律宾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PLW', '贝劳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PNG', '巴布亚新几内亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'POL', '波兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRI', '波多黎各', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRK', '朝鲜', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRT', '葡萄牙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRY', '巴拉圭', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PST', '巴勒斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PYF', '法属波利尼西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'QAT', '卡塔尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'REU', '留尼汪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ROM', '罗马尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'RUS', '俄罗斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'RWA', '卢旺达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SAU', '沙竺阿拉伯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SDN', '苏丹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SEN', '塞内加尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SGP', '新加坡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SGS', '南乔治亚岛和南桑德韦奇岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SHN', '圣赫勒拿', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SJM', '斯瓦尔巴群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SLB', '所罗门群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SLE', '塞拉利昂', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SLV', '萨尔瓦多', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SMR', '圣马力诺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SOM', '索马里', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SPM', '圣皮埃尔和密克隆', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'STp', '圣多美和普林西比', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SUR', '苏里南', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SVK', '斯洛伐克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SVN', '斯洛文尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SWE', '瑞典', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SWZ', '斯威士兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SYC', '塞舌尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SYR', '叙利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TCA', '特克斯科斯群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TCD', '乍得', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TGO', '多哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'THA', '泰国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TJK', '塔吉克斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TKL', '托克劳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TKM', '土库曼斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TMP', '东帝汶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TON', '汤加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TTO', '特立尼达和多巴哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TUN', '突尼斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TUR', '土耳其', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TUV', '图瓦卢', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TZA', '坦桑尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UGA', '乌干达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UKR', '乌克兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UMI', '美属太平洋各群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'URY', '乌拉圭', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'USA', '美国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UZB', '乌兹别克斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VAT', '梵蒂冈', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VCT', '圣文森特和格林纳丁斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VEN', '委内瑞拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VGB', '英属维尔京群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VIR', '美属维尔京群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VNM', '越南', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VUT', '瓦努阿图', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'WLF', '瓦利斯和富图纳群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'WSM', '西萨摩亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'YEM', '也门', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'YUG', '南斯拉夫', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZAF', '南非', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZAR', '扎伊尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZMB', '赞比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZWE', '津巴布韦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', '1', '路途遥远', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'A', '交易渠道不畅通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'B', '资讯不及时', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'C', '路途较远不方便', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'D', '服务态度不好', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'E', '收费较高', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'F', '营业网点环境不好', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'G', '对证券投资失去兴趣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'H', '外公司拉户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'I', '其它原因', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLR_MEM_CLS', '0', '本部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLR_MEM_CLS', '1', '托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLR_MEM_CLS', '2', '代理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '0', '完全匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '1', '匹配不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '2', '仅交易所有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '3', '仅券商有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '4', '未参与费用核对数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '5', '业务未在费用核对配置表中配置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '1', '成交金额不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '2', '成交数量不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '3', '印花税不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '4', '过户费不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '5', '清算费不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '6', '征管费不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '7', '经手费不一致', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '0', '自有账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '1', '独立存管账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '2', '普通存管账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '3', '信用存管账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '4', '小额休眠账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '5', '非合格账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_STATUS', '1', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '0', '资产类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '1', '负债类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '2', '权益类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '3', '损益类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '0', '不比较证券代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '1', '(成交记录)证券代码1与(委托)证券代码比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '2', '(成交记录)证券代码1正股代码与(委托)证券代码正股代码比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '3', '(成交记录)证券代码1与(委托)证券代码正股代码比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '4', '(成交记录)证券代码1正股代码与(委托)证券代码比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '5', '(成交记录)证券代码2与(委托)证券代码比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '6', '(成交记录)证券代码2与(委托)关联代码比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '7', '(成交记录)证券代码1与(委托)关联代码比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '8', '(成交记录)证券代码与(委托)证券代码比较后三位比较', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_FLAG', '0', '非必采', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_FLAG', '1', '必采', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_STATUS', '0', '待采集', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_STATUS', '1', '已采集', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'ASS_TOTAL', '普通证券账户总资产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'BREAK_CONTRACT', '是否存在违约记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'CUACCT_OPEN_DATE', '普通开户时间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'CUST_LASTRISK_REASON', '最低风险等级原因', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'EXPECT_INCOME', '预期收益', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'INVEST_LMT', '投资期限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'INVEST_PRO', '投资品种', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'IS_FISL', '是否从事过融资融券交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_AGE', '年龄', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_EDUCATION', '学历', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_OCCU', '职业类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_VOCATION', '职业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_ASSETTOTAL', '资产(系统内外之和)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_NETASSET', '净资产规模', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_REVENUE', '年营业收入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_SECTOTAL', '证券账户资产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMMISION_FLAG', '0', '非佣金费用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMMISION_FLAG', '1', '佣金费用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMMISION_FLAG', '2', '从佣金费用扣除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '0', '临时', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '1', '单笔成交量区间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '2', '全日成交量区间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '3', '累计成交量区间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '4', '累进成交量区间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '5', '资产量区间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '6', '换手率区间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '7', '最高佣金上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '8', '佣金会费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '9', '收益率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COM_CATEGORY', '0', '非回购类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COM_CATEGORY', '1', '回购类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '000', ' 投顾产品0', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '001', ' 投顾产品1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '002', ' 投顾产品2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '003', ' 投顾产品3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '004', ' 投顾产品4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '005', ' 投顾产品5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '010', ' 网上开户业务约定书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '020', ' 风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '021', ' 适当性匹配协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '022', ' 适当性不匹配协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '030', ' 客户须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '040', ' 上海证券交易所个人投资者行为指引', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '050', ' 证券交易委托代理协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '060', ' 个人数字证书申请责任书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '070', ' 数字证书业务风险提示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '080', '客户服务确认书及风险提示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '090', '委托关系确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '100', ' 三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '101', '兴业银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '102', '农业银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '103', '招商银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '104', '交通银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '105', '建设银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '106', '工商银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '107', '中国银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '108', '中信银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '109', '华夏银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10a', '民生银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10b', '光大银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10c', '平安银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10d', '广发银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10f', '浦发银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10g', '上海银行三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '201', 'OTC电子约定书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '202', 'OTC电子合同', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '203', '理财协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '300', '客户账户开户协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '302', '客户须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '303', '指定交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '304', '沪深权证风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '305', '上海证券交易所风险警示股票交易风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '306', '沪深交易所退市整理期股票交易风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '307', '上海交易所个人投资者行为指引', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '308', '证券交易委托代理协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '309', '证券投资基金投资人权益须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '30a', '证券交易委托风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '30b', '开放式基金电话委托、网上交易委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '401', '金易贷贷款协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '701', '股票期权自动行权协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '1', '待签约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '2', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '3', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '6', '待银行确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '9', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', 'M', '手工录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '00', '投顾产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '01', '网上开户业务约定书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '02', '风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '03', '客户须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '04', '上海证券交易所个人投资者行为指引', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '05', '证券交易委托代理协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '06', '个人数字证书申请责任书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '07', '数字证书风险提示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '08', '客户服务确认书及风险提示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '09', '委托关系确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '10', '三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '20', 'OTC产品电子协议签署', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '30', '网上开户电子协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '40', '金易贷电子协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '70', '股票期权协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_CLS', '0', '本部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_CLS', '1', '托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_CLS', '2', '代理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '01', '国有企业上市公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '02', '国有企业非上市公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '03', '非国有企业上市公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '04', '非国有企业非上市公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '10', '境外基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '11', '境外证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '12', '境外代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '13', '境外一般机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '21', '普通合伙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '22', '特殊普通合伙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '23', '有限合伙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '24', '非法人创投企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_TYPE', '0', '证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_TYPE', '1', '基金公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_TYPE', '2', '期货公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COUPON_OFFER', '0', '现金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COUPON_OFFER', '1', '提前了结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDE_SCAN', 'N', '不报送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDE_SCAN', 'Y', '需报送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '0', '正常类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '1', '关注类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '2', '警戒类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '3', '追加平仓类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '4', '清偿平仓类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '5', '终止类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '6', '准客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_LVL', '0', '一般', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_LVL', '1', '中等', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_LVL', '2', '高级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_TYPE', '0', '浮动', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_TYPE', '1', '固定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', '0', '规范客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', '1', '不规范客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', '2', '特殊类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'a', '正常户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'b', '代理人户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'c', '预指定户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'd', '未签约户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'e', '小额休眠账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'f', '纯资金户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'g', '不合格账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'h', '资料不齐全账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'i', '司法冻结户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'j', '监管账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'k', '大小非股份账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'l', '回购账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'm', '权证交易账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'n', '挂失/解挂账户 冻结/解冻账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'o', '客户遗失、遗忘密码账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'p', '涉嫌洗钱/恐怖融资账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'q', '政治性人物账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '00', '状态允许，上报TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '01', '状态禁止，上报TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '10', '状态允许，不上报TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '11', '状态禁止，不上报TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '0', '普通账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '1', '信用账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '2', 'OTC支付账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '3', '股票期权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '4', 'OTC独立存管账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '0', '客户2.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '0', '散户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '1', '中户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '1', '客户1.98（1.8）', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '2', '客户2.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '2', '大户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '3', '机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '3', '客户2.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '4', '客户2.3', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '5', '客户2.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '6', '客户2.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '7', '客户1.98', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '8', '客户2.8（xzj）', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '9', '网上客户经理', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'a', '客户2.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'b', '客户1.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'c', '长阳俱乐部', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'd', '客户1.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'e', '客户1.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'f', '客户1.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'g', '客户1.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'h', '客户0.9', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'i', '客户0.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'j', '客户0.7', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'k', '客户0.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'l', '客户0.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'm', '客户0.4', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'n', '客户3.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'o', '开放式基金个人户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'p', '开放式基金机构户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'q', '资料不规范户2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'r', '资料不规范户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 's', '拟新增休眠户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 't', '代理不规范户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'u', '虚假身份户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'v', '身份不对应户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'w', '休眠户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'x', '休眠冻结户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'y', '三方存管机构户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS_FEE_SN', '0', '1111', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS_FEE_SN', '1', '非现场测试1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_DMF', '0', '非存管账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_DMF', '1', '存管账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '0', '普通账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '1', '信用交易账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '2', 'OTC账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '3', '股票期权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '5', '资金系统账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '6', '消费支付账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_FLAG_ID', '4', '安e理财-财E达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_FLAG_ID', '5', '安e理财-财E胜', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_GRP', '0', '普通组别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_GRP', '0', '普通帐户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_GRP', '1', '特殊', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '*', '123', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '0', '散户大厅', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '0', '普通级别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '2', 'af', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '1', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '2', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '4', '休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '0', '主资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '1', '子资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '2', '信用资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '3', '股票期权资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '4', 'OTC非存管资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '5', 'OTC存管资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '6', 'OTC理财账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_CHK_MODE', '0', 'BKPS-BANK对账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_CHK_MODE', '1', 'TRDS-BANK对账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_STATUS', '0', '未联机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_STATUS', '1', '已联机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_STATUS', '2', '禁止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '01', '银行发起,银行转证券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '02', '银行发起,证券转银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '03', '银行发起,查帐户余额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '04', '银行发起,冲银行转证券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '05', '银行发起,冲证券转银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '06', '银行发起,银证开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '07', '银行发起,预指定银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '08', '银行发起,存管签约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '09', '银行发起,银证销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0A', '银行发起,重发业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0B', '银行发起,客户资料同步', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0C', '银行发起,变更银证帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0D', '银行发起,预约开户登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0E', '银行发起,联名卡登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0F', '银行发起,预约撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '11', '券商发起,银行转证券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '12', '券商发起,证券转银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '13', '券商发起,查银行余额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '14', '券商发起,冲银行转证券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '15', '券商发起,冲证券转银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '16', '券商发起,银证开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '17', '券商发起,预指定银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '18', '券商发起,存管签约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '19', '券商发起,银证销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1A', '券商发起,重发业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1B', '券商发起,客户资料同步', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1C', '券商发起,同步利息归本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1D', '券商发起,预约确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1E', '券商发起,预约撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1F', '券商发起,向银行签到', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1G', '券商发起,向银行签退', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1H', '券商发起,清算就绪通知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '0', '未报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '1', '已报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '2', '成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '3', '失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '4', '超时', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '5', '调为成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '6', '调为失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TYPE', '0', '转帐', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TYPE', '1', '存管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TYPE', '2', '银衍', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURRENCY', '0', '人民币', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURRENCY', '1', '港币', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURRENCY', '2', '美元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_CODE', '0', '人民币', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_CODE', '1', '港币', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_CODE', '2', '美元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_ID', 'HKD', '港元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_ID', 'RMB', '人民币', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_ID', 'USD', '美元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '00', '代理新股申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '01', '代理新股配售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '02', '代理配股缴款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '05', '客户报价转让协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '06', '客户账户合并协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '07', '委托理财协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '09', '权证交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0A', '创业板协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0B', '资金帐号密码联动', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0F', '密码联动', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0G', '股票期权自动行权协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0K', '开通服务佣金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0L', '开通报价回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0M', '开通跨境跨市场ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0N', '开通协议大宗交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0O', '债券专业投资者协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0P', '开通优先股转让交易权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0S', '中小企业私募债券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0V', '质押回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0Y', '开通约定购回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0b', '客户退市协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0c', '挂牌公司股票卖出协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0d', '7 X 24小时三方存管转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0e', '上海风险警示协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0f', '自主行权协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0g', '开通上证LOF交易业务权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0h', '7 X 24小时三方存管转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0i', '挂牌公司股票交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0j', '开通挂牌公司股票公开转让协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0k', '债券质押融券协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0l', '港股通协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0m', '股票质押回购融入交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0n', '股票质押回购融出交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0o', '风险警示债券买入协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0p', '暂停上市债券买入协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0q', '金易贷交易权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0r', '资管产品份额交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0s', '黄金ETF协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0t', '上海批量报价回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0u', '国债预发行交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0v', '受限投资者交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0w', '股票期权协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0y', '两网退市股票交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0z', '第三方存管单客户多银行协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '11', '债券合格投资者协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '14', '证券电子签名约定书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '15', '场内基金盲拆协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '17', '债券协议回购资金融入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '18', '债券协议回购资金融出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '19', '非公开股合格投资者协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '20', 'ETF申赎协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '21', '股转优先股交易协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '22', '一键登录协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '25', '资产支持证券合格投资者权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '26', '分级基金合格投资者权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '28', '融资回购协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '30', '报价回购代理委托协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '31', '现金产品快速取现协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '32', '股票质押中级贷业务权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'AB', 'A/B股开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'AC', '信用开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'X2', '纸质签署电子签名约定书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'Y1', '投资者适当性匹配及不适当性警示确认书（场内产品）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '0', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '1', '三方--开放式基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '2', '非三方--休眠--纯资金户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '3', '非三方--休眠--拟新增休眠户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '4', '非三方--休眠--休眠户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '5', '非三方--休眠--休眠冻结户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '6', '非三方--不合格--资料不规范户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '7', '非三方--不合格--代理不规范户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '8', '非三方--不合格--虚假身份户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '9', '非三方--不合格--身份不对户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', 'a', '公司自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', 'b', '非三方--股票账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '0', '普通客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '1', '信用交易客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '2', 'OTC客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '3', '股票期权客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '5', '资金系统客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG', 'b', '新开户回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '1', '战略机构客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '2', '万里通注册户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '3', '有效户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '7', '股票期权客户激活标示', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'C', '可重新测评标识', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'T', '投保业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'Z', '专业机构投资者标识', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'b', '回访激活标示', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'c', '产品账户标示', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'd', '融资融券自动授信标志', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'm', '融资融券开户首次邮件回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'n', '融资融券新开客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'o', '融资融券激活前回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '*', '未分组客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '0', '个人1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '1', '机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '2', '公司自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '0', '重要资料检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '1', '联系资料检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '2', '职业资料检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '3', '公司资料检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '4', '风险测评检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '5', '证件有效期检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '6', '代理人信息检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '7', '创业板资料检查(2年内未做风险测评)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '8', '证券市场黑名单检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '9', '非18位身份证检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'a', '最新风险测评答题检查(未做/过期)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'b', '手机号检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'c', '诚信记录检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'd', '适当性资料检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'e', '实际控制人资料检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'f', '实际受益人资料检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'g', '客户最低风险标识检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'h', '创业板联系人检查', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '0', '无完全民事行为能力', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '1', '无固定收入来源或收入低于当地最低生活保障标准', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '2', '无证券期货投资知识或投资经验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '3', '无风险容忍度或不能承受任何损失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '4', '证监会、协会、证券经营机构认定的其他情况', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_SOURCE', '0', '自来客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_SOURCE', '1', '介绍客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_SOURCE', '2', '网上商城', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '1', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '2', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '4', '休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '0', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '1', '自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '2', '资管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '3', 'QFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_USER_TYPE', '0', '个人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_USER_TYPE', '1', '机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_USER_TYPE', '2', '设备', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '0', '不循环', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '1', '大循环', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '2', '物理日循环', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '3', '业务日循环', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '101', '手机号码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '102', '邮政编码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '103', '身份证号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '104', '日期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '105', '联系地址', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '106', '联系方式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_IS_DIRTY', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_IS_DIRTY', '1', '脏', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SET_TYPE', '0', '当前数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SET_TYPE', '1', '历史数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SOURCE', '0', '自动导入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SOURCE', '9', '手工维护', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '1', '当日费用计算数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '2', '到期回购数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '3', '资金股份待交收数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '4', '资金待交收数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '5', '股份待交收数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '9', '交收结束', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_FLAG', '0', '非清算日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_FLAG', '1', '清算日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_STATUS', '0', '关账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_STATUS', '1', '开账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DAYS_OF_YEAR', '0', '360天', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DAYS_OF_YEAR', '1', '365/366天', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEAL_STATUS', '0', '获取成功(全部)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEAL_STATUS', '1', '获取成功(部分)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEAL_STATUS', '2', '未获取', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_BEAR_WAY', '1', '无限责任或无限连带责任', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_BEAR_WAY', '2', '有限责任', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_BEAR_WAY', '3', '特殊普通合伙人责任', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_REPAY_MODE', '0', '保证金不自动归还融资负债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_REPAY_MODE', '1', '保证金自动归还融资负债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_REPAY_MODE', '9', '取总部参数', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '01', '股份登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '40', '股份转让', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7A', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7B', '冻结解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7C', '冻结续冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7D', '轮候冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7E', '轮候冻结解除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7F', '冻结股份可售限制调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '8C', '新股认购放弃', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'P2', '期权账户注册申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'P3', '期权账户注销申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'Q3', '全部证券账户使用信息查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'Q4', '全部证券账户注册资料查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'R1', '担保证券提交与返还', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'R2', '融券券源划拨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'R3', '现券还券划拨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'S1', 'B 股一类指令修改指令', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'S2', 'B 股二类指令', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'X2', '沪市账户挂账股份补登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'ZC', '债券跨市场转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'ZG', '证券转托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'ZT', '转托管出错调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '01', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '02', '部分解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '03', '续冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '04', '轮候冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '05', '轮候部分解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '06', '轮候期限修改', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '07', '全部解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '08', '轮候全部解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '09', '不限制卖出证券冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '10', '不限制卖出证券部分解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '11', '调整为限制卖出冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '12', '调整为不限制卖出冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '13', '不限制卖出冻结证券交易卖出申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DELAY_SETT_FLAG', '0', '不允许延迟', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DELAY_SETT_FLAG', '1', '允许延迟', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DISC_TYPE', '0', '净佣金折扣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DISC_TYPE', '1', '全额佣金折扣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIVIDEND_FLAG', '0', '不含红利孳息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIVIDEND_FLAG', '1', '含红利孳息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIV_METHOD', '0', '红利转投资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIV_METHOD', '1', '现金分红', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIY_FRT_BIZ', '0m', '融资融券影像采集', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIY_FRT_BIZ', '0n', '资金账户开户业务凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIY_FRT_BIZ', '1C', '征信级别及授信额度调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DOCU_TYPE', '00', '资产证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DOCU_TYPE', '01', '财经类专业证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DOCU_TYPE', '02', '交易经验证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DR_CR_FLAG', '0', '借记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DR_CR_FLAG', '1', '贷记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '0', '博士', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '1', '硕士', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '2', '本科', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '3', '大专', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '4', '中专', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '5', '高中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '6', '初中以下', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', 'Z', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EFFECT_STATUS', '0', '生效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EFFECT_STATUS', '1', '终止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '1', '50人以下', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '2', '50-500人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '3', '500－3000人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '4', '3000-10000人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '5', '10000人以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '1', '1000以下', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '2', '1000-2000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '3', '2000-5000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '4', '5000-10000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '5', '10000以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '0', '集团公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '1', '（总）公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '2', '分公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '3', '控股公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '4', '子公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '1', '无', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '2', '证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '3', '信用卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '4', '人身保险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '5', '财产险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '6', '信托投资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '7', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'DF', '兑付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'DX', '兑息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'HL', '红利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'P', '配股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'S', '送股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'Z', '转配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '0', '二级市场基金代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '1', '申购赎回代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '2', '现金划拨代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '3', '发行认购代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '4', '认购资金冻结代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '0', '不允许申购赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '1', '允许申购赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '2', '允许申购，不允许赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '3', '允许赎回，不允许申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_INSTEAD_FLAG', '0', '禁止现金替代', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_INSTEAD_FLAG', '1', '可以现金替代', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_INSTEAD_FLAG', '2', '必须现金替代', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_PUBLISH', '0', '不发布', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_PUBLISH', '1', '发布', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'HG', '红股权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'HL', '红利权（含股利选择权）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'RG', '申报经确认的供/配股权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'SG', '收购权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'XG', '申报选择股利经确认的红利权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EUSER_TYPE', '0', '禁入名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EUSER_TYPE', '1', '违约名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EUSER_TYPE', '2', '小额股票质押黑名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '1', '1分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '2', '2分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '3', '3分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '4', '4分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '5', '5分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'a', '客户走了', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'b', '客户拒绝', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'c', '多业务重复', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'd', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '1', '近3年的年均个人收入超过50w(含)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '2', '机构净资产满足1000w', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '3', '个人金融资产满足300W(含场外)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '4', '不校验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXEC_RESULT', '0', '已执行成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXEC_RESULT', '1', '通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXEC_RESULT', '2', '未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXE_ORG_CLS', 'A', '法院', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXE_ORG_CLS', 'B', '证监会', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXE_ORG_CLS', 'C', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '0', '10%以内', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '1', '10%-30%', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '2', '30%-50%', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '3', '50%以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '0', '会计', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '1', '金融', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '2', '投资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '3', '财经', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '4', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '1', '开户代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '2', '结算单确认人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '3', '指令下单人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '4', '资金调拨人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '0', '联系地址', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '1', '手机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '2', '固定电话', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '3', '电子邮箱', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '4', '传真', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '@', '全部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_FLAG', '0', '整笔计算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_FLAG', '1', '分笔计算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '0', '金额乘费率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '1', '数量乘费率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '2', '数量乘面值乘费率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '3', '笔数乘费率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '4', '直接取最大费用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '5', '履约金计算方法', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_SUB_FLAG', '0', '不分段计费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_SUB_FLAG', '1', '分段计费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FILINGCABINET_NO ', '*', '暂未分配', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FILINGCABINET_NO ', '0', '默认编号', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '0', '普通员工', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '1', '董事', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '2', '监事', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '3', '高管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '0', '证券从业资格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '1', '期货从业资格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '2', '注册会计师证书(CPA)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '3', '注册金融分析师(CFA)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_ATTR_CODE', '1', '培训人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_ATTR_CODE', '2', '培训时间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_ATTR_CODE', '4', '两融客户类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_CLS', '0', '散户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_CLS', '1', '测试', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_CLS', 'z', '散户12', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_GRP', '3', '礼品帐户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_GRP', '4', '测试', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_LVL', '1', '散户级别', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_LVL', '2', '测试', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '0', '个人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '1', '普通机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '2', '专业机构(金融产品)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '3', '除金融产品外的专业机构投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '04', '信用账户开户客户资产最小值(单位：元)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '10', '客户融资融券风险测评试题编号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '11', '客户融资融券知识测评试题编号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '23', '融资融券征信风险测评提示分数', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '24', '客户融资融券知识测评提示分数', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '30', '客户总资产上限比例', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '31', '客户金融总资产上限比例', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '32', '单客户申请融资额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '33', '单客户申请融券额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '34', '单客户申请总额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '35', '全体客户融资额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '36', '全体客户融券额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '37', '全体客户总额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '38', '外围调整融资额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '39', '外围调整融券额度上限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '90', '紧急联系人是否必须输入手机号(1-是，0-否)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '91', '一站式征信是否显示主观评价(1-显示，0-不显示)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '92', '额度授信默认头寸编号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FI_CON_TYPE', '1', '先到先得', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FI_CON_TYPE', '2', '随借随用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '0', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '1', '日期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '2', '交易单元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '3', '证券代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '0', '不输出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '1', '全输出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '2', '前缀输出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '3', '比较结果输出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'A', '征信基本资料录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'B', '征信主观评价录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'C', '征信资料审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'D', '级别评定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'E', '级别评定审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'F', '资格申请录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'G', '资格申请审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'H', '额度发放', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'I', '额度发放审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FREEZE_TYPE', 'S', '可售冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FREEZE_TYPE', 'U', '不可售冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '*', '通用业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '00', '开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '01', '资料变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '02', '密码变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '03', '三方变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '04', '客户迁移', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '05', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '06', '股东加挂户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '07', '基金账户加挂户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '08', '资产银证加挂户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '09', '迁移客户激活', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0A', '自定义采集业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0B', '中登退回影像补采', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0C', '主资产账户设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0D', '设置创业板协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0E', '修改创业板协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0F', '删除创业板协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0G', '股票期权合约账户加挂户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0H', '客户身份证正常升位', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0I', '设置多方存管客户业务限制', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0J', '债券专业投资者资质审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0K', '代理人开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0L', '账户资料变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0M', '股东账户迁移', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0N', '一站式销户(无密码)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0O', '沪深债券风险管控资质审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0P', '一站式开户(新)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0Q', '股票质押式回购资格申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0R', '客户自助开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0S', '视频见证开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0T', '双人见证开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0U', '操作员菜单执行权限设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0V', '操作员菜单授权权限设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0W', '股票期权联合开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0X', '股票期权合约账户注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0Y', '业务影像', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0Z', '基金账户迁移', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0a', '股票期权一站式销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0b', '信用账户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0c', '休眠账户激活', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0d', '创新业务资质审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0e', '信用账户销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0f', '资格申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0g', '资格申请修改', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0h', '非现场开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0j', '非现场股东加挂', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0k', '征信资料录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0l', 'OTC客户联合开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0m', '融资融券影像采集', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0n', '资金账户开户业务凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0o', '一站式征信', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0p', '操作员授权岗位设置_执行权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0q', '操作员授权岗位设置_授权权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0r', '岗位菜单执行权限设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0s', '岗位菜单授权权限设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0t', '新客户自助开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0u', '投资适当资质审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0v', '港股通交易权限开通注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0w', '优先股合格投资者资质审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0x', '消费支付转账权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0y', '消费支付联合开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0z', 'OTC一站式销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '10', '基金账户批量单边销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '11', '股票期权资产账户注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '12', '股票期权账户级别设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '13', '股票期权买入额度设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '14', '股票期权资产账户加挂户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '15', '中小企业私募债资质审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '16', '债券合格投资者资质审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '17', '股东账户销户（系统内）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '18', '协会适当性分类设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '19', '客户签署特殊协议设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1A', '信用股东账户加挂户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1B', 'OTC理财账户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1C', '征信级别及授信额度调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1D', '私募合格投资者资格设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1E', '专业投资者资格设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1F', '网厅用户密码管理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1G', '客户私募产品申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1K', '私募基金投资者办理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1Q', '客户迁移(无密码)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OC', '顶点OTC账户销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OD', '顶点OTC账户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OJ', '专业投资者注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OM', '专业投资者续期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OT', '专业投资者开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OU', '客户系统外资产信息维护', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OV', '客户投资经验维护', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OW', '风险揭示标志设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OX', '非居民金融账户涉税信息设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '0', '资料登记中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '1', '待复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '2', '待执行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '3', '待扫描', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '4', '已扫描', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '5', '待导入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '6', '已完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '7', '已中止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '8', '异常任务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '9', '复核未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'A', 'dos导入异常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'B', '异常中止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'E', '身份复核登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'F', '身份复核阶段', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'G', '身份复核失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'H', '影像一审', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'I', '影像上传', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'J', '影像二审', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRZ_TYPE', '1', '司法冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRZ_TYPE', '2', '质押冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRZ_TYPE', '3', '其它冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '0', '常规功能', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '1', '客户单一查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '2', '客户查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '3', '公司查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '4', '公司单一查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '5', '通用参数', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '020', '20万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '030', '30万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '050', '50万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '100', '100万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '200', '200万', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '0', '存入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '1', '取出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '2', '转账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '3', '异地存入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '4', '异地取出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '5', '打印单据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '6', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '0', '无效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '1', '清算冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '2', '清算解冻(可用)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '3', '清算解冻(不可用)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '4', '交收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'F', '不变化', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'M', '资金流出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'P', '资金流入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'X', '无意义', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '0', '当然的私募合格投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '1', '需审核的私募合格投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '2', '当然的专业投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '3', '需审核的专业投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '4', '从业人员私募合格投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '0', '禁止销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '1', '禁止买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '2', '禁止卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '3', '禁止指定交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '4', '禁止柜台支取', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '5', '禁止银行端发起银证转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '6', '禁止银行端发起银证转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '7', '禁止存款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '8', '禁止债券转股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '9', '禁止债券回售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'A', '禁止券商端发起银证转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'B', '禁止券商端发起银证转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'C', '禁止撤指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'H', '禁回购注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'K', '禁止自动展期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'P', '禁止配股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'Q', '禁止融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'R', '禁止融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'S', '禁止申购新股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'W', '禁止网上委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'Z', '禁止转托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '0', '禁止主辅账户以及辅账户与辅账户之间划转', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '1', '只允许从辅账户到主账户单向划转', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '2', '允许主账户与辅账户之间互转', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '3', '主辅账户以及辅账户与辅账户之间都可以划转', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1000', '结算备付金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1001', '交易保证金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1002', '权证履约保证金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1003', '价差保证金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2000', '清算金额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2001', '成交金额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2002', '手续费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2003', '净佣金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2004', '印花税', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2005', '过户费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2006', '交易所过户费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2007', '清算费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2008', '交易规费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2009', '经手费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2010', '证管费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2020', '风险基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2021', '开户费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2022', '转托管费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2023', '委托单费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2024', '撤单单费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2025', '成交单费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2026', '查询单费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2027', '前台收费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2030', '利息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2031', '利息税', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2032', '透支罚息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2033', '履约金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2034', '权益补偿费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2100', '认购金额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2101', '申购金额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2102', '赎回金额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2103', '退补款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2104', '代理费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2105', '管理费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2106', '额度占用费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '9999', '其他费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '1', '客户代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '2', '资产账户号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '3', '代理人代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '4', '大客户号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GRANT_TYPE', '0', '禁止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GRANT_TYPE', '1', '允许', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GRANT_TYPE', '2', '全部允许', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_DLE_TYPE', 'HCX', '查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_DLE_TYPE', 'HSB', '申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H01', '港股通股票交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H02', '港股通权证交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H54', '港股通红利发放业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H55', '港股通红利补领业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H56', '港股通差额缴款收取', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H57', '港股通按金收取', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H58', '港股通差额缴款退款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H59', '港股通按金退款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H60', '港股通证券组合费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H62', '港股通投票申报业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H63', '港股通公司收购业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H64', '港股通公开配售申报业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H65', '港股通供股申报业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H66', '港股通红利股票选择权申报业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H67', '港股通零碎股现金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H90', '港股通手工批量划付资金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '1', '租用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '2', '自置物业(付清)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '3', '按揭物业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '4', '亲属住房', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '5', '单位住房', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_AGENCY_ID', '00001B', '摩根大通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_AGENCY_ID', '1001S', '渣打银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_AGENCY_ID', '81218', '机构81218', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110101', '东城区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110102', '西城区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110103', '崇文区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110104', '宣武区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110105', '朝阳区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110106', '丰台区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110107', '石景山区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110108', '海淀区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110109', '门头沟区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110111', '房山区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110112', '通州区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110113', '顺义区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110114', '昌平区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110115', '大兴区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110116', '怀柔区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110117', '平谷区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110228', '密云县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110229', '延庆县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120101', '和平区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120102', '河东区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120103', '河西区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120104', '南开区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120105', '河北区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120106', '红桥区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120107', '塘沽区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120108', '汉沽区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120109', '大港区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120110', '东丽区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120111', '西青区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120112', '津南区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120113', '北辰区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120114', '武清区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120115', '宝坻区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120221', '宁河县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120223', '静海县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120225', '蓟　县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130100', '石家庄市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130200', '唐山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130300', '秦皇岛市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130400', '邯郸市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130500', '邢台市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130600', '保定市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130700', '张家口市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130800', '承德市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130900', '沧州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156131000', '廊坊市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156131100', '衡水市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140100', '太原市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140200', '大同市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140300', '阳泉市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140400', '长治市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140500', '晋城市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140600', '朔州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140700', '晋中市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140800', '运城市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140900', '忻州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156141000', '临汾市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156141100', '吕梁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150100', '呼和浩特市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150200', '包头市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150300', '乌海市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150400', '赤峰市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150500', '通辽市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150600', '鄂尔多斯市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150700', '呼伦贝尔市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150800', '巴彦淖尔市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150900', '乌兰察布市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156152200', '兴安盟', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156152500', '锡林郭勒盟', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156152900', '阿拉善盟', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210100', '沈阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210200', '大连市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210300', '鞍山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210400', '抚顺市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210500', '本溪市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210600', '丹东市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210700', '锦州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210800', '营口市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210900', '阜新市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211000', '辽阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211100', '盘锦市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211200', '铁岭市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211300', '朝阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211400', '葫芦岛市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220100', '长春市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220200', '吉林市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220300', '四平市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220400', '辽源市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220500', '通化市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220600', '白山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220700', '松原市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220800', '白城市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156222400', '延边朝鲜族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230100', '哈尔滨市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230200', '齐齐哈尔市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230300', '鸡西市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230400', '鹤岗市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230500', '双鸭山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230600', '大庆市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230700', '伊春市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230800', '佳木斯市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230900', '七台河市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156231000', '牡丹江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156231100', '黑河市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156231200', '绥化市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156232700', '大兴安岭地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310101', '黄浦区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310103', '卢湾区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310104', '徐汇区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310105', '长宁区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310106', '静安区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310107', '普陀区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310108', '闸北区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310109', '虹口区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310110', '杨浦区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310112', '闵行区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310113', '宝山区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310114', '嘉定区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310115', '浦东新区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310116', '金山区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310117', '松江区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310118', '青浦区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310119', '南汇区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310120', '奉贤区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310230', '崇明县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320100', '南京市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320200', '无锡市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320300', '徐州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320400', '常州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320500', '苏州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320600', '南通市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320700', '连云港市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320800', '淮安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320900', '盐城市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321000', '扬州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321100', '镇江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321200', '泰州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321300', '宿迁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330100', '杭州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330200', '宁波市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330300', '温州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330400', '嘉兴市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330500', '湖州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330600', '绍兴市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330700', '金华市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330800', '衢州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330900', '舟山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156331000', '台州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156331100', '丽水市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340100', '合肥市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340200', '芜湖市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340300', '蚌埠市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340400', '淮南市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340500', '马鞍山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340600', '淮北市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340700', '铜陵市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340800', '安庆市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341000', '黄山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341100', '滁州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341200', '阜阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341300', '宿州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341400', '巢湖市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341500', '六安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341600', '亳州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341700', '池州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341800', '宣城市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350100', '福州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350200', '厦门市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350300', '莆田市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350400', '三明市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350500', '泉州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350600', '漳州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350700', '南平市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350800', '龙岩市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350900', '宁德市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360100', '南昌市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360200', '景德镇市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360300', '萍乡市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360400', '九江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360500', '新余市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360600', '鹰潭市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360700', '赣州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360800', '吉安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360900', '宜春市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156361000', '抚州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156361100', '上饶市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370100', '济南市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370200', '青岛市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370300', '淄博市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370400', '枣庄市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370500', '东营市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370600', '烟台市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370700', '潍坊市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370800', '济宁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370900', '泰安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371000', '威海市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371100', '日照市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371200', '莱芜市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371300', '临沂市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371400', '德州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371500', '聊城市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371600', '滨州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371700', '菏泽市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410100', '郑州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410200', '开封市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410300', '洛阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410400', '平顶山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410500', '安阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410600', '鹤壁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410700', '新乡市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410800', '焦作市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410900', '濮阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411000', '许昌市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411100', '漯河市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411200', '三门峡市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411300', '南阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411400', '商丘市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411500', '信阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411600', '周口市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411700', '驻马店市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420100', '武汉市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420200', '黄石市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420300', '十堰市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420500', '宜昌市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420600', '襄樊市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420700', '鄂州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420800', '荆门市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420900', '孝感市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421000', '荆州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421100', '黄冈市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421200', '咸宁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421300', '随州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156422800', '恩施土家族苗族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429004', '仙桃市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429005', '潜江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429006', '天门市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429021', '神农架林区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430100', '长沙市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430200', '株洲市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430300', '湘潭市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430400', '衡阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430500', '邵阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430600', '岳阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430700', '常德市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430800', '张家界市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430900', '益阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431000', '郴州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431100', '永州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431200', '怀化市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431300', '娄底市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156433100', '湘西土家族苗族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440100', '广州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440200', '韶关市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440300', '深圳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440400', '珠海市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440500', '汕头市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440600', '佛山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440700', '江门市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440800', '湛江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440900', '茂名市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441200', '肇庆市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441300', '惠州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441400', '梅州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441500', '汕尾市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441600', '河源市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441700', '阳江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441800', '清远市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441900', '东莞市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156442000', '中山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156445100', '潮州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156445200', '揭阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156445300', '云浮市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450100', '南宁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450200', '柳州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450300', '桂林市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450400', '梧州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450500', '北海市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450600', '防城港市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450700', '钦州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450800', '贵港市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450900', '玉林市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451000', '百色市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451100', '贺州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451200', '河池市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451300', '来宾市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451400', '崇左市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156460100', '海口市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156460200', '三亚市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469001', '五指山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469002', '琼海市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469003', '儋州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469005', '文昌市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469006', '万宁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469007', '东方市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469025', '定安县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469026', '屯昌县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469027', '澄迈县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469028', '临高县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469030', '白沙黎族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469031', '昌江黎族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469033', '乐东黎族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469034', '陵水黎族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469035', '保亭黎族苗族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469036', '琼中黎族苗族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469037', '西沙群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469038', '南沙群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469039', '中沙群岛的岛礁及其海域', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500101', '万州区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500102', '涪陵区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500103', '渝中区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500104', '大渡口区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500105', '江北区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500106', '沙坪坝区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500107', '九龙坡区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500108', '南岸区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500109', '北碚区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500110', '万盛区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500111', '双桥区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500112', '渝北区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500113', '巴南区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500114', '黔江区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500115', '长寿区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500222', '綦江县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500223', '潼南县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500224', '铜梁县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500225', '大足县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500226', '荣昌县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500227', '璧山县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500228', '梁平县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500229', '城口县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500230', '丰都县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500231', '垫江县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500232', '武隆县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500233', '忠　县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500234', '开　县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500235', '云阳县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500236', '奉节县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500237', '巫山县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500238', '巫溪县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500240', '石柱土家族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500241', '秀山土家族苗族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500242', '酉阳土家族苗族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500243', '彭水苗族土家族自治县', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500381', '江津市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500382', '合川市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500383', '永川市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500384', '南川市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510100', '成都市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510300', '自贡市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510400', '攀枝花市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510500', '泸州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510600', '德阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510700', '绵阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510800', '广元市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510900', '遂宁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511000', '内江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511100', '乐山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511300', '南充市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511400', '眉山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511500', '宜宾市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511600', '广安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511700', '达州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511800', '雅安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511900', '巴中市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156512000', '资阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156513200', '阿坝藏族羌族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156513300', '甘孜藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156513400', '凉山彝族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520100', '贵阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520200', '六盘水市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520300', '遵义市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520400', '安顺市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522200', '铜仁地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522300', '黔西南布依族苗族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522400', '毕节地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522600', '黔东南苗族侗族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522700', '黔南布依族苗族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530100', '昆明市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530300', '曲靖市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530400', '玉溪市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530500', '保山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530600', '昭通市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530700', '丽江市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530800', '思茅市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530900', '临沧市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532300', '楚雄彝族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532500', '红河哈尼族彝族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532600', '文山壮族苗族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532800', '西双版纳傣族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532900', '大理白族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156533100', '德宏傣族景颇族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156533300', '怒江傈僳族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156533400', '迪庆藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156540100', '拉萨市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542100', '昌都地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542200', '山南地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542300', '日喀则地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542400', '那曲地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542500', '阿里地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542600', '林芝地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610100', '西安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610200', '铜川市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610300', '宝鸡市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610400', '咸阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610500', '渭南市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610600', '延安市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610700', '汉中市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610800', '榆林市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610900', '安康市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156611000', '商洛市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620100', '兰州市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620200', '嘉峪关市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620300', '金昌市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620400', '白银市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620500', '天水市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620600', '武威市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620700', '张掖市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620800', '平凉市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620900', '酒泉市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156621000', '庆阳市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156621100', '定西市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156621200', '陇南市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156622900', '临夏回族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156623000', '甘南藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156630100', '西宁市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632100', '海东地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632200', '海北藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632300', '黄南藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632500', '海南藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632600', '果洛藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632700', '玉树藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632800', '海西蒙古族藏族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640100', '银川市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640200', '石嘴山市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640300', '吴忠市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640400', '固原市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640500', '中卫市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156650100', '乌鲁木齐市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156650200', '克拉玛依市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652100', '吐鲁番地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652200', '哈密地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652300', '昌吉回族自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652700', '博尔塔拉蒙古自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652800', '巴音郭楞蒙古自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652900', '阿克苏地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156653000', '克孜勒苏柯尔克孜自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156653100', '喀什地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156653200', '和田地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156654000', '伊犁哈萨克自治州', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156654200', '塔城地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156654300', '阿勒泰地区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659001', '石河子市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659002', '阿拉尔市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659003', '图木舒克市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659004', '五家渠市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '01', '个人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02', '单位', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201', '金融机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020101', '证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010101', '证券自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010102', '证券集合理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010103', '证券定向理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010104', '基金管理业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010401', '封闭式基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010402', '开放式基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010403', '保本基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010404', 'ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010405', '债券基金 短期理财债券基金除外', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020102', '基金公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010201', '封闭式基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010202', '开放式基金(不包括ETF)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010203', '保本基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010204', 'ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010205', '基金专户理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010206', '债券基金 短期理财债券基金除外', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020103', '银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010301', '银行自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010302', '银行理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020104', '社保基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020105', '企业年金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020106', 'QFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020107', '保险公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010701', '保险资产组合', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010702', '基金管理业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070201', '封闭式基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070202', '开放式基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070203', '保本基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070204', 'ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070205', '债券基金 短期理财债券基金除外', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020108', '信托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010801', '信托公司单一信托产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010802', '信托公司集合信托产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020109', 'RQFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020110', '私募基金管理机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011001', '私募证券投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011002', '私募股权投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011003', '私募创业投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011004', '私募商品基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011005', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0202', '一般法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020201', '财务公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020202', '投资、咨询公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020203', '房地产', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020204', '工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020205', '农业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020206', '商业贸易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020207', '多元化集团公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020208', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '1', '境内期货公司直接代理境外投资者模式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '2', '境外特殊经纪参与者模式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '3', '境外中介机构中间介绍模式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '4', '境外中介机构委托代理模式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '5', '境外特殊非经纪参与者模式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156110000', '北京市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156120000', '天津市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156130000', '河北省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156140000', '山西省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156150000', '内蒙古自治区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156210000', '辽宁省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156220000', '吉林省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156230000', '黑龙江省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156310000', '上海市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156320000', '江苏省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156330000', '浙江省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156340000', '安徽省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156350000', '福建省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156360000', '江西省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156370000', '山东省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156410000', '河南省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156420000', '湖北省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156430000', '湖南省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156440000', '广东省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156450000', '广西壮族自治区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156460000', '海南省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156500000', '重庆市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156510000', '四川省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156520000', '贵州省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156530000', '云南省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156540000', '西藏自治区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156610000', '陕西省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156620000', '甘肃省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156630000', '青海省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156640000', '宁夏回族自治区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156650000', '新疆维吾尔自治区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156710000', '台湾省', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156810000', '香港特别行政区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156820000', '澳门特别行政区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '110', '国有企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '120', '集体企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '130', '股份合作企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '141', '国有联营企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '142', '集体联营企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '143', '国有与集体联营企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '149', '其他联营企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '151', '国有独资企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '159', '其他有限责任公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '160', '股份有限公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '171', '私营独资企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '172', '私营合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '173', '私营有限责任公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '174', '私营股份有限公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '190', '其他企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '210', '合资经营企业（港或澳、台资）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '220', '合作经营企业（港或澳、台资）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '230', '港、澳、台商独资经营企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '240', '港、澳、台商投资股份有限公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '310', '中外合资经营企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '320', '中外合作经营企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '330', '外资企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '340', '外商投资股份有限公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '400', '其他经济组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '500', '国家机关', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '600', '社会团体', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '700', '事业单位', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '800', '国际组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '001', '总部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '002', '郑州营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '003', '大连营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '004', '上海营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '005', '银川营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '006', '洛阳营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '007', '福州营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '008', '天津营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '009', '杭州营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '010', '深圳营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '011', '青岛营业部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'A', '涉棉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'B', '涉糖', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'C', '涉化', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'D', '涉粮', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'E', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'F', '油脂', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'G', '涉煤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'H', '建材', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'I', '冶金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_CHECK_FLAG', '0', '未校验', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_CHECK_FLAG', '1', '校验通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_CHECK_FLAG', '2', '校验不通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_INPUT_FLAG', '1', ' 手动录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_INPUT_FLAG', '2', ' 读卡录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_READ_FLAG', '0', '未读卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_READ_FLAG', '1', '已读卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '*', '未归类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '1', '第一代身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '2', '第二代身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '3', '其他证件卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '00', '身份证号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '01', '护照号码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '02', '军官证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '03', '士兵证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '04', '回乡证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '05', '户口本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '09', '其它证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0a', '出生证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0b', '香港居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0c', '澳门居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0d', '台湾居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0e', '外国人永久居留证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0f', '社会保障号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0g', '文职证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0h', '警官证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0i', '香港居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0j', '澳门居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '10', '工商营业执照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '11', '社团法人注册登记证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '12', '机关法人成立批文', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '13', '事业法人成立批文', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '14', '境外有效商业登记证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '15', '武警', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '16', '军队', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '17', '基金会', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '18', '技术监督局号码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '19', '其它证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1A', '组织机构代码证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1B', '税务登记证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1C', '其他有效证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1K', 'ID_TYPE_1K', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1P', '统一社会信用代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1Z', '批文', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '2a', '注册号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_ATTR', '0', '用户影像资料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_ATTR', '1', '机构影像资料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '000', '中登质检数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '010', '机构/个人客户开户确认回执', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '011', '资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '012', '开放式基金开户确认回执', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '013', '三方存管变更确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '014', '密码变更确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '015', '权证签署确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '016', '加挂户确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '017', '创业板签署确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '018', '三板开户确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '019', '其他单证首页码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01a', '变更证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01b', '销户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01c', '客户资金消费支付申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01d', '客户资金转账转入业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01e', '港澳台客户须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01h', '债券市场专业投资者资格确认表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '020', '身份证照片', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '021', '人头像', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '022', '居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '023', '护照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '024', '客户银行帐号复印件或潜影', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '025', '港澳台回乡证或台胞证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '026', '出生证/社会保障证/其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '027', '军官证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '028', '户口本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '029', '士兵证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02a', '身份证明文件复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02b', '非现场开户合影照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02c', '银行卡照片', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02d', '香港居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02e', '澳门居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02f', '台湾居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02g', '香港居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02h', '澳门居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02i', '台湾居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02j', '临时住宿登记证明表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02k', '外国人永久居留证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02m', '客户签字照片', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02p', '非现场彩色身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '030', '开户合同书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '031', '基金风险承受能力测评表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '032', '基金风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '033', '基金开户协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '034', '股份转让委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '035', '股份转让风险提示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '036', '三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '037', '银证转账协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '038', '开放式基金交易委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '039', '证券投资基金投资人权益须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03A', '创新业务开通状态', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03a', '手机炒股委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03b', '网上委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03g', '单客户多银行协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03h', '服务佣金协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03z', '其他协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '040', '个人服务登记表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '041', '机构服务登记表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '042', '证券投资风险承受能力测评问卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '043', '客户资产变动申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '044', '客户资产变动确认回执', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '045', '指定交易协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '046', '权证风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '047', '自然人注册帐户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '048', '机构证券帐户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '049', '证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04a', '创业板市场投资风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04b', '注销证券帐户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04c', '委托理财协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04d', '客户报价转让协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04e', '客户帐户合并协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04f', '转托管/撤指定协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04g', '挂失补办证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04h', '合并证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04i', '激活休眠证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04j', '注销休眠证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04k', '证券账户注册资料查询申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04l', '合伙企业等非法人组织证券账户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04m', '合伙企业等非法人组织证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04o', '债券市场专业投资者风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04s', '数字证书业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04y', '证券业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04z', '其他申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '050', '营业执照副本/社团法人注册登记证/机关事业法人成立批文', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '051', '组织机构代码证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '052', '税务登记证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '053', '法定代表人证明书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '054', '法定代表人授权委托书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '055', '机构银行帐号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '056', '法定代表人身份证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05a', '预留印鉴', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05b', '营业执照复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05c', '组织机构代码证复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05d', '税务登记证复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '060', '深A股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '061', '深B股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '062', '沪B股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '063', '深圳基金帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '064', '三板A类帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '065', '三板B类帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '066', '深/沪市其他帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '067', '沪A股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '068', '上海基金帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '069', '信用证券账户卡(上海)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '06a', '信用证券账户卡(深圳)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '070', '代理人临柜照片', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '071', '代理人居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '072', '代理人护照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '073', '代理人港澳台回乡证或台胞证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '074', '代理人其他证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '075', '公证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '076', '授权委托书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '07a', '代理人身份证明文件复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '080', '普通证券账户/资金账户证明文件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '081', '工作证明材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '082', '居住证明材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '083', '收入证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '084', '活期储蓄存折', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '085', '定期存单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '086', '凭证式国债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '087', '其他金融资产(理财产品等)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '088', '自有房产证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '089', '按揭贷款还款证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08A', '自然人信用证券账户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08B', '机构信用证券账户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08C', '自然人信用证券账户查询申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08D', '机构信用证券账户查询申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08E', '自然人信用证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08F', '机构信用证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08G', '自然人挂失补办信用证券账户卡申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08H', '机构挂失补办信用证券账户卡申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08I', '自然人注销信用证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08J', '机构注销信用证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08K', '信用资金账户开户申请表(个人)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08L', '信用资金账户开户申请表(机构)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08M', '信用资金账户变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08N', '信用资金账户销户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08a', '其他资产(汽车、股权投资等)证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08b', '申请人的配偶信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08c', '其他金融机构信用评估(级)报告', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08d', '无市场禁入情形的承诺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08e', '年检合格的贷款卡(证)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08f', '法定代表人等名单和签字样本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08g', '申请融资融券业务决议的文件或证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08h', '办公地址证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08i', '季度财务报告', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08j', '新设法人验资证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08z', '其他融资融券需要提交的材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '090', '债券质押式报价回购客户协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '091', '债券质押式报价回购业务风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '092', '债券质押式报价回购业务承诺书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '093', '债券质押式报价回购业务投资者测试券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '094', '报价回购业务确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '095', '报价转让特别风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '096', '法定监护人承诺书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '097', '电子签名约定书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '098', '开放式基金交易业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '099', '外商投资企业批准证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '09I', '分级基金投资风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '0X3', '身份证正面', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '0X4', '身份证反面', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '100', '基金账户撤销确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '101', '非现场创业板签署确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '102', '非现场创业板市场投资风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '103', '非现场法定代表人身份证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '104', '非现场深A股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '105', '非现场深B股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '106', '非现场沪A股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '107', '非现场代理人居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '108', '非现场临时住宿登记证明表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '109', '基金账户撤销确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '111', '股票期权业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '112', '股票期权经纪业务合同', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '113', '股票期权资产证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '114', '股票期权销户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12i', '法人资格证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12j', '高龄特别风险提示确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12k', '公司章程', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12l', '合同讲解确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12m', '合同讲解影像', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12n', '合同签署影像', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12o', '婚姻证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12p', '面谈记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12q', '融资融券风险提示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12r', '融资融券业务合同', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12s', '融资融券业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12t', '投资者教育影像', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12u', '信用记录证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12v', '学历证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12x', '纸质测试试卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12y', '纸质测试影像', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14B', '客户风险承受能力评估结果告知函', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14C', '适当性匹配意见及投资者确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14D', '金融产品或服务风险警示及投资者确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14E', '综合业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14F', '专业投资者申请书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14G', '专业投资者告知及确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14H', '专业投资者知识测试问卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14I', '投资经历明细表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14J', '私募合格投资者承诺书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14K', '普通投资者转专业投资者风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14L', '专业投资者转普通投资者申请书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14M', '投资者基本信息表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14N', '高风险产品或者服务特别风险警示书及客户投资确认书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14O', '业务资格审核表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_DIY_SCAN_BIZ', '01', '开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_DIY_SCAN_BIZ', '02', '重要资料变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_DIY_SCAN_BIZ', '03', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '0', 'BMP', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '1', 'JPG', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '2', 'GIF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '3', 'TIF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '!', '不等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '<', '小于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '<=', '小于等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '=', '等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '>', '大于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '>=', '大于等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'B', '区间(大于等于前值，小于等于后值)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'I', '包含', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'N', '区间外(小于前值，大于后值)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'S', '属于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_SOURCE', '0', '临柜', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_SOURCE', '1', '外围', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '1', '未上传', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '2', '上传未审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '3', '修改未审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '4', '上传审核取消', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '5', '修改审核取消', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '6', '删除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '7', '作废', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '8', '丢失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', 'A', '未采集', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', 'B', '已采集', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '00', '质检类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '01', '业务确认表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '02', '个人客户身份证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '03', '开户协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '04', '业务申请单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '05', '机构户身份证明材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '06', '证券帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '07', '代理人资料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '08', '信用账户资料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '09', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '10', '非现场影像类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '11', '股票期权影像类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '12', '融资融券影像类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '14', '适当性影像类别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '0', '0-1000元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '1', '1001-3000元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '2', '3001-5000元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '3', '5001-8000元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '4', '8000元以上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '01', '综合类证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '02', '经纪类证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '03', '银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '04', '信托投资公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '08', '基金管理公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '10', '保险公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'A', '农、林、牧、渔业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'B', '采矿业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'C', '制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'D', '电力、热力、燃气及水生产和供应业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'E', '建筑业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'F', '批发和零售业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'G', '交通运输、仓储和邮政业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'H', '住宿和餐饮业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'I', '信息传输、软件和信息技术服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'J', '金融业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'K', '房地产业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'L', '租赁和商务服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'M', '科学研究和技术服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'N', '水利、环境和公共设施管理业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'O', '居民服务、修理和其他服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'P', '教育', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'Q', '卫生和社会工作', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'R', '文化、体育和娱乐业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'S', '公共管理、社会保障和社会组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'T', '国际组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A01', '农业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A02', '林业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A03', '畜牧业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A04', '渔业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A05', '农、林、牧、渔服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B06', '煤炭开采和洗选业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B07', '石油和天然气开采业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B08', '黑色金属矿采选业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B09', '有色金属矿采选业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B10', '非金属矿采选业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B11', '开采辅助活动', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B12', '其他采矿业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C13', '农副食品加工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C14', '食品制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C15', '酒、饮料和精制茶制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C16', '烟草制品业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C17', '纺织业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C18', '纺织服装、服饰业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C19', '皮革、毛皮、羽毛及其制品和制鞋业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C20', '木材加工和木、竹、藤、棕、草制品业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C21', '家具制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C22', '造纸和纸制品业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C23', '印刷和记录媒介复制业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C24', '文教、工美、体育和娱乐用品制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C25', '石油加工、炼焦和核燃料加工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C26', '化学原料和化学制品制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C27', '医药制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C28', '化学纤维制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C29', '橡胶和塑料制品业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C30', '非金属矿物制品业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C31', '黑色金属冶炼和压延加工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C32', '有色金属冶炼和压延加工业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C33', '金属制品业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C34', '通用设备制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C35', '专用设备制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C36', '汽车制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C37', '铁路、船舶、航空航天和其他运输设备制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C38', '电气机械和器材制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C39', '计算机、通信和其他电子设备制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C40', '仪器仪表制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C41', '其他制造业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C42', '废弃资源综合利用业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C43', '金属制品、机械和设备修理业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'D44', '电力、热力生产和供应业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'D45', '燃气生产和供应业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'D46', '水的生产和供应业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E47', '房屋建筑业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E48', '土木工程建筑业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E49', '建筑安装业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E50', '建筑装饰和其他建筑业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'F51', '批发业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'F52', '零售业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G53', '铁路运输业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G54', '道路运输业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G55', '水上运输业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G56', '航空运输业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G57', '管道运输业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G58', '装卸搬运和运输代理业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G59', '仓储业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G60', '邮政业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'H61', '住宿业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'H62', '餐饮业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'I63', '电信、广播电视和卫星传输服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'I64', '互联网和相关服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'I65', '软件和信息技术服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J66', '货币金融服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J67', '资本市场服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J68', '保险业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J69', '其他金融业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'K70', '房地产业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'L71', '租赁业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'L72', '商务服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'M73', '研究和试验发展', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'M74', '专业技术服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'M75', '科技推广和应用服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'N76', '水利管理业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'N77', '生态保护和环境治理业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'N78', '公共设施管理业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'O79', '居民服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'O80', '机动车、电子产品和日用产品修理业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'O81', '其他服务业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'P82', '教育', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'Q83', '卫生', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'Q84', '社会工作', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R85', '新闻和出版业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R86', '广播、电视、电影和影视录音制作业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R87', '文化艺术业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R88', '体育', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R89', '娱乐业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S90', '中国共产党机关', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S91', '国家机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S92', '人民政协、民主党派', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S93', '社会保障', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S94', '群众团体、社会团体和其他成员组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S95', '基层群众自治组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'T96', '国际组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_STATUS', '0', '未告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_STATUS', '1', '告知已确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_STATUS', '2', '告知已拒绝', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '1', '测评有效期即将到期告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '2', '测评有效期已到期告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '3', '风测评级自动更新告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '4', '申请测评审核通过告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '5', '申请测评审核失败告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '6', '禁止修改测评结果告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '7', '网上开户审核未通过告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '8', '网上开户审核通过告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '9', '过期客户提示告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', 'a', '专业投资者有效期即将到期告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', 'b', '专业投资者有效期已到期告知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_ID_STATUS', '0', '不允许发布', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_ID_STATUS', '1', '允许发布', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_TYPE', '0', '公告', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_TYPE', '1', '通知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_TYPE', '2', '资讯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INOUTSIDE_IDENTITY', '0', '境内', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INOUTSIDE_IDENTITY', '1', '境外', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '10', '股票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '20', '衍生品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '30', '商品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '40', '外汇', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '51', '信托融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '52', '信托投资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '60', '券商理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '71', '一对一', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '72', '一对多', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '80', '有限合伙基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '90', '银行理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '91', '光大核心理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '92', '光大BTA理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', 'A0', '保险理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', 'B0', '债券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '1', '股票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '2', '衍生品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '3', '商品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '4', '外汇', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '5', '信托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '6', '券商理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '7', '公募基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '8', '有限合伙基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '9', '银行理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', 'A', '保险理财', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', 'B', '债券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_CLS', '0', '科目利率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_CLS', '1', '客户利率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_TYPE', '0', '存款负债利率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_TYPE', '1', '存款利率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_TYPE', '2', '负债利率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '1', '自然人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '2', '非自然人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '5', '境外非自然人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '9', '其他投资人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_TYPE', '0', '普通投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_TYPE', '1', '专业投资者A类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_TYPE', '2', '专业投资者B类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_LMT', '0', '长期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_LMT', '1', '中期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_LMT', '2', '短期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '01', '固定收益类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '02', '权益类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '03', '衍生品类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '04', '复杂或高风险类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '99', '其他类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IN_USE', '0', '未启用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IN_USE', '1', '启用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAW', 'F', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAW', 'T', '撤单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAWN', '0', '无撤单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAWN', '1', '有撤单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_CLS', '0', '银行对帐数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_CLS', '1', '券商交收数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_CLS', '2', '银行清算结果', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_FLOW', '0', '流出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_FLOW', '1', '流入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_FLOW', '2', '双向', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '0', '不处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '1', '处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '2', '未匹配到转换配置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '3', '用于对账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '0', '实时信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '1', '实时交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '2', '清算数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '3', '清算对账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '4', '登记公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_ALLPWDCHANGE_INFO', 'L3102119_取密码变更数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_BANKACCT_INFO', 'L3102117_取银证资料核对数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_OFUNDACCT_INFO', 'L3102118_取基金账户核对数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_OTC_ACCT_INFO', 'L6000384_OTC登记账号资料核对数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_OTC_OFUNDACCT_INFO', 'L3202118_取OTC基金账户核对数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_VIP_CUST_INFO', 'L3300326_柜台VIP客户资料核对数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_OP_TYPE', '0', '删除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_OP_TYPE', '1', '转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '0', '未处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '1', '处理中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '2', '处理失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '3', '处理成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '0', 'DBF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '1', 'SQL', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '2', 'TXT', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '3', 'TCPIP', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'JOB_ISOLATION_LEVE', '0', '无隔离要求', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'JOB_ISOLATION_LEVE', '1', '串行运行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '!=', '不等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '<', '小于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '<=', '小于等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '==', '等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '>', '大于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '>=', '大于等于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'B', '区间(大于等于前值，小于后值)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'I', '包含', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'S', '属于', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'T', '存在', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '01', '内资企业法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '02', '外资及港澳台资企业法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '03', '金融机构法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '04', '事业法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '05', '社团法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '06', '机关法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '07', '境外法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '08', '合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '09', '非法人创投企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '99', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '00', '无限售流通股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '01', 'IPO后限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '02', '股权激励限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '05', 'IPO前限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '1', '手机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '2', '固定电话', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '3', '电子邮件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '4', '传真', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKADDR_ORDER', '1', '家庭地址', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKADDR_ORDER', '2', '单位地址', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKADDR_ORDER', '3', '联系地址', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '1', '手机', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '2', '家庭电话', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '3', '工作电话', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '4', '小灵通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '1', '原股冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '2', '原股+红股冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '3', '原股+红股+配股（权证及认购后股份）冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '4', '原股+红股+股息冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '0', '可随意联络', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '1', '不超过1月3次', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '2', '不超过1季度1次', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '3', '不超过1年1次', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LISTED_ATTR', '1', '上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LISTED_ATTR', '2', '非上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIST_STATUS', 'N', '未上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIST_STATUS', 'Y', '已上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '0', '不允许申购赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '1', '允许申购赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '2', '允许申购，不允许赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '3', '允许赎回，不允许申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOG_TYPE', '0', '操作流水', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOG_TYPE', '1', '客户帐务流水', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOG_TYPE', '2', '公司帐务流水', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LS_FLAG', '0', '多头看涨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LS_FLAG', '1', '多头看跌', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAIL_TYPE', '1', '经济寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAIL_TYPE', '2', '特快寄送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAJPBU_FLAG', '0', '辅交易单元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAJPBU_FLAG', '1', '主交易单元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAND_FLAG', '0', '非必要', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAND_FLAG', '1', '必要', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '1', '未婚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '2', '已婚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '3', '离异', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '4', '丧偶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '0', '委托匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '1', '周期匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '2', '账户匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '3', '红利匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '9', '挂账匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MENU_TYPE', '0', '父级菜单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MENU_TYPE', '1', '功能菜单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MENU_TYPE', '2', '菜单分割线', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '0', '限价委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '1', '对方买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '2', '本方买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '3', '即时买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '4', '五档买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '5', '全额买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '6', '转限买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'A', '对方卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'B', '本方卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'C', '即时卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'D', '五档卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'E', '全额卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'F', '转限卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '1', '业务类错误', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '2', '系统类错误', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '3', '数据库错误', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '00', '汉族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '01', '蒙古族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '02', '回族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '03', '藏族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '04', '维吾尔族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '05', '苗族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '06', '彝族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '07', '壮族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '08', '布依族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '09', '朝鲜族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '10', '满族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '11', '侗族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '12', '瑶族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '13', '白族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '14', '土家族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '15', '哈尼族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '16', '哈萨克族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '17', '傣族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '18', '黎族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '19', '傈僳族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '20', '佤族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '21', '畲族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '22', '高山族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '23', '拉祜族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '24', '水族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '25', '东乡族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '26', '纳西族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '27', '景颇族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '28', '柯尔克孜族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '29', '土族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '30', '达斡尔族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '31', '仫佬族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '32', '羌族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '33', '布朗族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '34', '撒拉族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '35', '毛南族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '36', '仡佬族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '37', '锡伯族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '38', '阿昌族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '39', '普米族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '40', '塔吉克族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '41', '怒族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '42', '乌兹别克族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '43', '俄罗斯族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '44', '鄂温克族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '45', '德昂族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '46', '保安族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '47', '裕固族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '48', '京族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '49', '塔塔尔族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '50', '独龙族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '51', '鄂伦春族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '52', '赫哲族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '53', '门巴族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '54', '珞巴族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '55', '基诺族', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '56', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '1', '国务院国资委管辖', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '2', '地方国资委管辖', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '3', '其他国有企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '4', '非国有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NET_SERVICE', '0', '否', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NET_SERVICE', '1', '是', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NEW_OR_EXIST', '0', '已有', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NEW_OR_EXIST', '1', '新开', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '0', '资产帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '1', '客户代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '2', '资产帐户类别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '3', '资产帐户级别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '4', '资产帐户组别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '6', '资金帐户类别+级别+组别组合', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '7', '资金帐户类别+级别组合', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '8', '资金帐户类别+组别组合', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '9', '资金帐户级别+组别组合', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', 'A', '经纪人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '01', '文教科卫专业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '02', '党政（在职，离退休）机关干部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '03', '企事业单位干部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '04', '行政企事业单位工人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '05', '农民', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '06', '个体', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '07', '无业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '08', '军人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '09', '学生', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '0A', '自由职业者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '10', '证券从业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '11', '离退休', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '0', '国家机关、党群组织、企业、事业单位负责人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '1', '专业技术人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '2', '办事人员和有关人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '3', '商业、服务业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '4', '农、林、牧、渔、水利业生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '5', '生产、运输设备操作人员及有关人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '6', '军人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '7', '不便分类的其他从业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '001', '中国共产党中央委员会和地方各级组织负责人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '002', '国家机关及工作机构负责人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '003', '民主党派和社会团体及工作机构负责人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '004', '事业单位负责人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '005', '企业负责人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '106', '科学研究人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '107', '工程技术人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '108', '农业技术人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '109', '飞机和船舶技术人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '110', '卫生专业技术人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '111', '经济业务人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '112', '金融业务人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '113', '法律专业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '114', '教学人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '115', '文学艺术工作人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '116', '体育工作人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '117', '新闻出版、文化工作人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '118', '宗教职业者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '219', '行政办公人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '220', '安全保卫和消防人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '221', '邮政和电信业务人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '222', '其他办事人员和有关人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '323', '购销人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '324', '仓储人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '325', '餐饮服务人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '326', '饭店、旅游及健身娱乐场所服务人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '327', '运输服务人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '328', '医疗卫生辅助人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '329', '社会服务和居民生活服务人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '330', '其他商业、服务业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '431', '种植业生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '432', '林业生产及野生动植物保护人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '433', '畜牧业生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '434', '渔业生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '435', '水利设施管理养护人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '436', '其他农、林、牧、渔、水利业生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '537', '勘测及矿物开采人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '538', '金属冶炼、轧制人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '539', '化工产品生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '540', '机械制造加工人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '541', '机电产品装配人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '542', '机械设备修理人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '543', '电力设备安装、运行、检修及供电人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '544', '电子元器件与设备制造、装配、调试及维修人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '545', '橡胶和塑料制品生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '546', '纺织、针织、印染人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '547', '裁剪、缝纫和皮革、毛皮制品加工制作人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '548', '粮油、食品、饮料生产加工及饲料生产加工人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '549', '烟草及其制品加工人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '550', '药品生产人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '551', '木材加工、人造板生产、木制品制作及制浆、造纸和纸制品生产加工人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '552', '建筑材料生产加工人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '553', '玻璃、陶瓷、搪瓷及其制品生产加工人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '554', '广播影视制品制作、播放及文物保护作业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '555', '印刷人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '556', '工艺、美术品制作人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '557', '文化教育、体育用品制作人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '558', '工程施工人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '559', '运输设备操作人员及有关人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '560', '环境监测及废物处理人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '561', '检验、计量人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '562', '其他生产、运输设别操作人员及有关人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '663', '军人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '764', '不便分类的其他从业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '1', '锁定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '2', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '3', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '4', '休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '6', '冻结且挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '7', '新开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '8', '关键资料变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '9', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'a', '内部冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'b', '基金账户开户未确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'c', '交易账户开户未确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'd', '账户资料修改未确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'e', '开户失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '01', '基金开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '02', '基金销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '03', '资料修改', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '04', '账户冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '05', '账户解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '06', '账户挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '07', '账户解挂', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '08', '账户指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '09', '撤销指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFSALE_FIRMID', '1', '金证股份', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPENED_DATES', '06', '6个月', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPENED_DATES', '12', '12个月', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPENED_DATES', '24', '24个月', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '0', '证券AB股业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '1', '证券三板业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '2', '场内基金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '3', '融资融券业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0a', '读卡配置(0不强制读卡1强制读卡)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0b', '公安校验配置(0不强制1强制)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0c', '控制未成年人开户(0-允许 1-允许但提示 2-禁止)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0d', '控制70岁开户(0-允许 1-允许但提示 2-禁止)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0e', '读身份证时，证件地址赋给家庭地址(0-赋值 1-不赋值)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0f', '个人必须录入开户代理人(0-不必须 1-必须)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0g', '发证机关是否强制录入(0-非强制 1-强制录入)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0h', '个人必须建立代理关系(0-非强制 1-强制录入)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0i', '一站式开户是否允许开子帐户(0-不允许 1-允许)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0j', '一站式开户中登开卡的地址(0-证件地址 1-联系地址)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0k', '一站式开户中登开卡开卡失败是否需要打印(0-打印 其它为不打印)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0m', '一站式开户是否默认开通网络服务(0-不开通 1-开通)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0n', '新一站式开户是否允许开基金账户(0-不允许 1-允许)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0o', '新一站式开户是否允许开纯资金账号(0-不允许 1-允许)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0p', '一站式开户(新)是否允许修改身份验证页面(0-不允许 1-允许)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '0', '柜台开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '1', '客户自助', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '2', '视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '3', '双人见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '4', '手机开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '5', 'QQ开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '0', '普通操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '1', '信用交易操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '2', 'OTC操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '3', '股票期权操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_FLAG', 'A', '开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_FLAG', 'C', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPTION_TYPE', '1', '数值匹配(前闭后开:x1=<Value<x2)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPTION_TYPE', '2', '数值匹配(前闭后无穷大:Value>=x1)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPTION_TYPE', '3', '数值匹配(前闭后闭:x1=<Value<=x2)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_APP_TYPE', '0', '买入申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_APP_TYPE', '1', '限仓申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '0', '散户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '0', '客户2.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '1', '客户1.98（1.8）', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '1', '中户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '2', '大户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '2', '客户2.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '3', '客户2.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '3', '机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '4', '客户2.3', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '5', '客户2.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '6', '客户2.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '7', '客户1.98', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '8', '客户2.8（xzj）', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '9', '网上客户经理', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'a', '客户2.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'b', '客户1.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'c', '长阳俱乐部', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'd', '客户1.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'e', '客户1.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'f', '客户1.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'g', '客户1.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'h', '客户0.9', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'i', '客户0.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'j', '客户0.7', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'k', '客户0.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'l', '客户0.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'm', '客户0.4', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'n', '客户3.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'o', '开放式基金个人户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'p', '开放式基金机构户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'q', '资料不规范户2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'r', '资料不规范户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 's', '拟新增休眠户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 't', '代理不规范户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'u', '虚假身份户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'v', '身份不对应户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'w', '休眠户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'x', '休眠冻结户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'y', '三方存管机构户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_GRP', '0', '普通组别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_GRP', '0', '普通帐户', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_GRP', '1', '特殊', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '*', '123', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '0', '普通级别', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '0', '散户大厅', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '2', 'af', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '0', '不合格投资人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '1', '一级投资人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '2', '二级投资人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '3', '三级投资人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '01', '做市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '02', '套保', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '03', '套利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '04', '产品（管理）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '05', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_CLS', '0', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_CLS', '1', '离柜操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '1', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '2', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '0', '未派单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '1', '已派单，未联系客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '2', '已联系客户，未见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '3', '见证中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '4', '已见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '5', '拒绝开户见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '6', '废弃', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '0', '未报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '1', '正报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '2', '已报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '3', '已报待撤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '4', '部成待撤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '5', '部撤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '6', '已撤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '7', '部成待撤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '8', '已成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '9', '废单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', 'A', '待报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_TYPE', '0', '限价委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_TYPE', '1', '市价委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_VALID_FLAG', '0', '无效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_VALID_FLAG', '1', '有效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '0', '委托价格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '1', '当前价格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '2', '今开价格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '3', '昨收价格', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '00', '总部', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '01', '管理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '02', '业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '10', '转帐', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '11', '存管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '12', '柜台', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '13', '划付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '14', '银衍', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '20', '交易所', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '21', '登记结算公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '30', '基金公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '40', '期货公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_SCOPE', '0', '本机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_SCOPE', '1', '下属机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_SCOPE', '2', '本机构及下属机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '0', '内部机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '1', '银行机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '2', '交易所/登记公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '3', '基金公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '4', '期货公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDFUND_FLAG', '0', '不允许提前使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDFUND_FLAG', '1', '允许提前使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDSHARE_FLAG', '0', '不允许提前使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDSHARE_FLAG', '1', '允许提前使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PARCHKER_FLAG', '0', '部分复核通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PARCHKER_FLAG', '1', '全部复核通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '0', '普通合伙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '1', '特殊普通合伙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '2', '有限合伙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '3', '非法人非合伙制创投企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '4', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '1', '证券公司融出方证券公司为质权人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '2', '资管计划融出方证券公司为质权人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '3', '资管子公司融出方资管子公司为质权人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '4', '定向资管客户融出方定向客户为质权人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '5', '定向资管客户融出方证券公司为质权人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '6', '资管子公司客户融出方定向客户为质权人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '7', '资管子公司客户融出方资管子公司为质权人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_DIV_FLAG', '0', '不含红利孳息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_DIV_FLAG', '1', '含红利孳息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '1', '现金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '1', '现金', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '2', '免费', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '2', '免费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '3', '保证金', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '3', '保证金扣除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_TYPE', '0', '现金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_TYPE', '1', '转账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_TYPE', '2', '服务佣金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '0', '保证金支付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '1', '第三方支付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '2', '线下支付（体外）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '3', '独立存管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '4', '外部独立存管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERBIZ_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERBIZ_STATUS', '8', '新股中签', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERBIZ_STATUS', '9', '已关闭', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '0', '逢周', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '1', '逢月', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '2', '自然日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '3', '交易日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PK_FLAG', '0', '非主键', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PK_FLAG', '1', '主键', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', '0', '高层管理人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', '1', '中层管理人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', '2', '普通职工', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', 'Y', '无', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', 'Z', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'A', '单标的单账户个人总持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'B', '单标的单账户个人非备兑持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'C', '单标的单账户一般机构总持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'D', '单标的单账户一般机构非备兑持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'E', '单标的单账户自营总持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'F', '单标的单账户自营非备兑持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'G', '单标的单账户做市商总持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'H', '单标的单账户做市商非备兑持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'I', '会员经纪单标的单向总持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'J', '会员自营单标的单向总持仓限额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '01', '证券公司集合理财产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '02', '证券公司专项资产管理计划', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '03', '基金公司特定客户资产管理产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '04', '基金公司特定客户资产管理产品（保险）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '05', '基金公司特定客户资产管理产品（信托）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '06', '封闭式证券投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '07', '开放式证券投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '08', '私募基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '09', '其他证券投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '10', '全国社保基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '11', '地方社保基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '12', '信托产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '13', '保险产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '14', '保险资产管理产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '15', '期货资产管理产品(多客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '16', '期货资产管理产品（单一）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '17', '企业年金计划', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '18', 'QFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '19', 'RQFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '20', '养老金产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '21', '银行理财产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '22', '上市公司员工持股计划', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '0', '按合同序号、股东代码、证券代码配对', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '1', '按股东代码、证券代码配对', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '2', '按交易日期、股东代码、证券代码配对', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '3', '按交易日期、合同序号、股东代码、证券代码配对', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '4', '按交易日期、成交编号、股东代码、证券代码配对', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREORDER_FLAG', '0', '不允许预委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREORDER_FLAG', '1', '允许预委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIFEE_CAL_METHOD', '0', '取清算数据计算结果', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIFEE_CAL_METHOD', '1', '根据费用设置计算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '1', '级别1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '2', '级别2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '3', '级别3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '4', '级别4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '5', '级别5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVATE_FUND_TYPE', '1', '私募基金合格投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVATE_FUND_TYPE', '2', '私募基金合格机构投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVATE_FUND_TYPE', '3', '私募基金特别投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '0', '未处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '1', '处理成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '2', '处理失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '3', '放弃处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_RESULT', '0', '未处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_RESULT', '1', '已处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_RESULT', '2', '处理出错', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '00', '普通投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '01', '经降级的普通投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '10', '专业投资者I类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '11', '专业投资者II类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '12', '专业投资者III类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_TYPE', '0', '普通投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_TYPE', '1', '专业投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROPER_CLS', '1', '创业板', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROPER_CLS', '9', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROP_TYPE', '0', '内部属性', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROP_TYPE', '1', '外部属性', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '1', '挂牌公司合格投资者新增', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '3', '两网公司及退市公司交易权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '4', '两网公司及退市公司交易权限取消', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '5', '优先股合格投资者新增', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '1', '证券公司资产管理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '2', '基金管理公司(公募)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '3', '私募基金管理公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '4', '商业银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '5', '信托投资公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '6', '期货公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '7', '保险公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '8', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_TRUSTEE_QUAL_TYPE', '1', '商业银行托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_TRUSTEE_QUAL_TYPE', '2', '证券公司托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRT_FLAG', '0', '不打印', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRT_FLAG', '1', '打印', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRT_FLAG', '2', '不打印，但生成补打文件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PUB_TYPE', '0', '系统操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PUB_TYPE', '1', '内部系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PUB_TYPE', '2', '外部系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '1', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '2', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '3', '支付帐户待销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '4', '支付帐户销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '5', '开户未确定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '6', '帐户修改未确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_CHANNEL', '0', '线上', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_CHANNEL', '1', '线下', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ORG_CODE', '1', '通联', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUALITY_TYPE', '1', '一般风险客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUALITY_TYPE', '2', '中风险客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUALITY_TYPE', '3', '高风险客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUERY_FLAG', '0', '不作为查询输入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUERY_FLAG', '1', '可作为查询输入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '01', '证券公司自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '02', '证券公司集合或专项计划', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '03', '资管子公司集合或专项计划', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '04', '证券公司定向客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '05', '资管子公司定向客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RC_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RC_STATUS', '1', '禁止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REBATE_MODE', '0', '全额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REBATE_MODE', '1', '超额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '00', '证券经营机构内部诚信记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '01', '中国人民银行征信中心', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '02', '最高人民法院失信被执行人名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '03', '工商行政管理机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '04', '税务管理机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '05', '监管机构、自律组织', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '06', '恶意维权等不当行为信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_STATUS', '0', '只读', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_STATUS', '1', '允许修改', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_TYPE', '0', '节点', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_TYPE', '1', '数项', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_COMM', '0', '亲属', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_COMM', '1', '朋友', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_COMM', '2', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '1', '董事', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '2', '监事', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '3', '高管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '4', '持未解除限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '5', '持已解除限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '6', '限售股信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '7', '持有上市公司5%以上股份的客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '00', '配偶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '01', '父母', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '02', '子女', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '03', '其他亲戚关系', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '04', '合伙人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '05', '同事', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '06', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '0Z', '本人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '10', '子公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '11', '母公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '12', '关联公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '13', ' 其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION_FLAG', '0', '否', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION_FLAG', '1', '是', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_BIZ_TYPE', '01', '一柜通业务对接柜员记录每个营业部的一柜通的对接柜员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_BIZ_TYPE', '02', '一柜通业务一站式销户是否必须预约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_PROTOCOL', '0', '未签署', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_PROTOCOL', '1', '签署', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '0', '普通交易系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '1', '融资融券系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '2', '股票期权系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '3', '统一认证系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_FORBID_FLAG', '0', '未解禁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_FORBID_FLAG', '1', '已解禁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_LMT_CLS', '1', '解除中止交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_LMT_CLS', '2', '解除卖出限制', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_LMT_CLS', '3', '深市账户券商柜面系统注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REORD_FLAG', '0', '不允许重复委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REORD_FLAG', '1', '允许重复委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FCERT_FLAG', '0', '允许使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FCERT_FLAG', '1', '禁止使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FFUND_FLAG', '0', '允许使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FFUND_FLAG', '1', '禁止使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MCERT_FLAG', '0', '允许使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MCERT_FLAG', '1', '禁止使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MFUND_FLAG', '0', '允许使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MFUND_FLAG', '1', '禁止使用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPLY_ATTACK', '0', '不检测', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPLY_ATTACK', '1', '检测', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REQ_STATUS', '0', '待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REQ_STATUS', '1', '审核通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REQ_STATUS', '2', '审核不通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVIEW_STATUS', 'F', '不通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVIEW_STATUS', 'T', '通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '0', '未回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '1', '已回访成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '2', '拒绝接听', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '3', '未接听', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '4', '需重新回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RIGHT_TYPE', '0', '执行权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RIGHT_TYPE', '1', '授权权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RIGHT_TYPE', '2', '执行和授权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '0', '开户规范', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '1', '资料缺失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '2', '一对多户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '3', '未预留银行帐号机构户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '4', '受托监管户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '7', '洗钱低风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '8', '洗钱中风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '9', '洗钱高风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '10', '追缴担保品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '11', '负债风险平仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '12', '合约风险平仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '13', '提供虚假信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '14', '司法纠纷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '15', '风险撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '16', '司法结案', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '99', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_LVL', '0', '低风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_LVL', '1', '中风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_LVL', '2', '高风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '0', '低风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '1', '中低风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '2', '中风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '3', '中高风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '4', '高风险', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RNT_MODE', '0', '手工', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RNT_MODE', '1', '自动', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '0', '调用禁止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '1', '调用允许', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '2', '调用分发', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '3', '调用分发强制', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '000', '中登质检数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '010', '机构/个人客户开户确认回执', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '011', '资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '012', '开放式基金开户确认回执', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '013', '三方存管变更确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '014', '密码变更确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '015', '权证签署确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '016', '加挂户确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '017', '创业板签署确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '018', '三板开户确认单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '019', '其他单证首页码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01a', '变更证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01b', '销户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01e', '港澳台客户须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01h', '债券市场专业投资者资格确认表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '020', '身份证照片', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '021', '人头像', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '022', '居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '023', '护照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '024', '客户银行帐号复印件或潜影', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '025', '港澳台回乡证或台胞证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '026', '出生证/社会保障证/其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '027', '军官证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '028', '户口本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '029', '士兵证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02a', '身份证明文件复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02b', '非现场开户合影照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02c', '银行卡照片', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02d', '香港居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02e', '澳门居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02f', '台湾居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02g', '香港居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02h', '澳门居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02i', '台湾居民通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02j', '临时住宿登记证明表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02k', '外国人永久居留证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '030', '开户合同书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '031', '基金风险承受能力测评表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '032', '基金风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '033', '基金开户协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '034', '股份转让委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '035', '股份转让风险提示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '036', '三方存管协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '037', '银证转账协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '038', '开放式基金交易委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '039', '证券投资基金投资人权益须知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03A', '创新业务开通状态', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03a', '手机炒股委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03b', '网上委托协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03g', '单客户多银行协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03h', '服务佣金协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03z', '其他协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '040', '个人服务登记表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '041', '机构服务登记表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '042', '证券投资风险承受能力测评问卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '043', '客户资产变动申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '044', '客户资产变动确认回执', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '045', '指定交易协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '046', '权证风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '047', '自然人注册帐户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '048', '机构证券帐户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '049', '证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04a', '创业板市场投资风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04b', '注销证券帐户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04c', '委托理财协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04d', '客户报价转让协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04e', '客户帐户合并协议', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04f', '转托管/撤指定协议书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04g', '挂失补办证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04h', '合并证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04i', '激活休眠证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04j', '注销休眠证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04k', '证券账户注册资料查询申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04l', '合伙企业等非法人组织证券账户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04m', '合伙企业等非法人组织证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04o', '债券市场专业投资者风险揭示书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04y', '证券业务申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04z', '其他申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '050', '营业执照副本/社团法人注册登记证/机关事业法人成立批文', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '051', '组织机构代码证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '052', '税务登记证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '053', '法定代表人证明书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '054', '法定代表人授权委托书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '055', '机构银行帐号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '056', '法定代表人身份证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05a', '预留印鉴', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05b', '营业执照复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05c', '组织机构代码证复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05d', '税务登记证复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '060', '深A股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '061', '深B股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '062', '沪B股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '063', '深圳基金帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '064', '三板A类帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '065', '三板B类帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '066', '深/沪市其他帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '067', '沪A股东帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '068', '上海基金帐户卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '069', '信用证券账户卡(上海)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '06a', '信用证券账户卡(深圳)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '070', '代理人临柜照片', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '071', '代理人居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '072', '代理人护照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '073', '代理人港澳台回乡证或台胞证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '074', '代理人其他证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '075', '公证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '076', '授权委托书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '07a', '代理人身份证明文件复印件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '080', '普通证券账户/资金账户证明文件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '081', '工作证明材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '082', '居住证明材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '083', '收入证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '084', '活期储蓄存折', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '085', '定期存单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '086', '凭证式国债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '087', '其他金融资产(理财产品等)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '088', '自有房产证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '089', '按揭贷款还款证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08A', '自然人信用证券账户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08B', '机构信用证券账户注册申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08C', '自然人信用证券账户查询申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08D', '机构信用证券账户查询申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08E', '自然人信用证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08F', '机构信用证券账户注册资料变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08G', '自然人挂失补办信用证券账户卡申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08H', '机构挂失补办信用证券账户卡申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08I', '自然人注销信用证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08J', '机构注销信用证券账户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08K', '信用资金账户开户申请表(个人)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08L', '信用资金账户开户申请表(机构)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08M', '信用资金账户变更申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08N', '信用资金账户销户申请表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08a', '其他资产(汽车、股权投资等)证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08b', '申请人的配偶信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08c', '其他金融机构信用评估(级)报告', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08d', '无市场禁入情形的承诺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08e', '年检合格的贷款卡(证)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08f', '法定代表人等名单和签字样本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08g', '申请融资融券业务决议的文件或证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08h', '办公地址证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08i', '季度财务报告', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08j', '新设法人验资证明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08z', '其他融资融券需要提交的材料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '099', '外商投资企业批准证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_MODE', '1', '打印报表', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_MODE', '2', '纯纸质档案', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', '0', '申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', '1', '完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', '2', '退回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', 'S', '额度已设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '00', '内部机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '01', '银行机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '02', '登记公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '03', '基金公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '04', '期货公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '10', '结算法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '11', '客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '12', '操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '13', '经纪人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '14', '代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '20', '资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '30', '深圳A股股东', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '31', '深圳B股股东', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '32', '上海A股股东', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '33', '上海B股股东', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '0', '机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '1', '用户角色', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '2', '资产账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '3', '股东账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTRES_TYPE', '0', '全局权限资源', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTRES_TYPE', '1', '局部权限资源', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RZFX_TYPE', '0', '融入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RZFX_TYPE', '1', '融出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SALE_FLAG', 'N', '不可售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SALE_FLAG', 'Y', '可售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '1', '清算中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '2', '清算完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '3', '收盘作业中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEC_ACCT_FLAG', '0', '不记账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEC_ACCT_FLAG', '1', '记账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '100', '影像上传', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '200', '个人信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '300', '视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '400', '数字证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '500', '账户信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '600', '三方存管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '700', '录入完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEND_TO_BANK', '0', '不发送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEND_TO_BANK', '1', '需发送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', '0', '常规类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', '1', '物理日期类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', '2', '业务日期类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', 'A', '自增长常规类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', 'B', '自增长物理日期类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', 'C', '自增长业务日期类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '0', '1级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '1', '2级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '2', '3级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '3', '4级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '4', '5级', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '00', '流通证券冻结/解冻申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '01', '证券冻结情况查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '02', '流通证券协助冻结当日申报查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '03', '流通证券协助冻结当日申报撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '08', '债券跨市场转托管转出申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '09', '债券跨市场转托管转出申报撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '10', '债券跨市场转托管转出申报查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DATE_FLAG', '0', '非交收日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DATE_FLAG', '1', '是交收日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DLVY_TYPE', '0', '非同步付款交割（DAP）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DLVY_TYPE', '1', 'T+n担保DVP交收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DLVY_TYPE', '2', 'T+n逐笔全额非担保交收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '0', '未开始', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '1', '运行中', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '2', '暂停', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '3', '取消', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '4', '完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '0', '三级清算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '1', '法人清算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '2', '客户上下帐', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '3', '客户银证清算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '4', '统一帐户日终清算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '5', '补作上下账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '6', '补作登记公司数据处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '8', '清算数据导出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '9', '基础数据转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', 'A', '配置数据导出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_STATUS', '1', '正在运行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_STATUS', '2', '处理失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_STATUS', '3', '已完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '01', '结算账户(客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '02', '结算账户(自营)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '11', '清算编号(客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '12', '清算编号(自营)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '21', '股转结算账户(客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '22', '股转结算账户(自营)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '31', '期权结算账户(客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '32', '期权结算账户(自营)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '41', '信用结算账户(客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '42', '信用结算账户(自营)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '51', '信用清算编号(客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '52', '信用清算编号(自营)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '61', '深港通业务结算编号(客户)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '62', '深港通业务结算编号(自营)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEX', '0', '男性', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEX', '1', '女性', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEX', '2', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '06', '开户费查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '11', '投资人资料查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '12', 'B股账户变更结算会员(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '13', 'B股账户变更结算会员指令查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '14', 'B股账户变更结算会员指令撤销(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '15', '沪A信用账户（个人）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '16', '客户信用证券账户配号查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '17', '休眠账户报送(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '18', '休眠账户撤销(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '19', '休眠账户激活(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '1E', '沪A信用账户（机构）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '20', '不合格账户报送(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '21', '跨市场转登记补登记申报(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '22', 'B股指定交易申报(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '23', '不合规账户合规报送(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '24', '不合格账户报送查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '25', '未规范不合格账户报送(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '26', '未规范不合格账户合规报送(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '27', '未规范不合格账户解冻(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '28', '未规范不合格账户报送查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '29', '休眠账户销户(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '2A', '不合格账户撤销(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '2B', '已处理不合格账户报送(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '30', 'B股账户销户信息查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '31', '证券账户开户(新)(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '32', '证券账户资料修改(新)(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '33', '证券帐户资料查询(新)(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '34', '证券账户卡补打(新)(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '40', '首次交易日期查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '41', '合伙人信息申报(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '42', '合伙人信息查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '43', '合伙人信息删除(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '44', '证券账户资料修改历史查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '50', '股票期权合约账户(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '60', '挂失/销户申报(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '61', '挂失/销户查询(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'A0', '股东卡销户(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'B0', '股东卡挂失(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'C0', '股东卡撤消挂失(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'D0', '股东卡转户(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'Q3', '深圳全部使用信息查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'Q4', '深圳全部注册资料查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '01', '沪A个人账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '02', '沪A机构账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '03', '沪A自营账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '04', '沪A基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '05', '沪B境内个人账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '06', '沪B境外个人账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '07', '沪B境外机构账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '08', '合伙人A股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '09', '沪A信用账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '00', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '10', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '20', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '40', '休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '90', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '00', '无限售流通股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '01', '挂牌后个人类限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '02', '股权激励限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '03', '挂牌后机构类限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '04', '高管锁定股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '05', '挂牌前个人类限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '06', '挂牌前机构类限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_AUDIT_FLAG', '0', '不需要审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_AUDIT_FLAG', '1', '需要审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '0', '无效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '1', '清算冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '2', '清算解冻(可用)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '3', '清算解冻(不可用)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '4', '交收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLAG', '0', '不共享', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLAG', '1', '数据库共享', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLAG', '2', '本地共享', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'F', '不变化', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'M', '股份流出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'P', '股份流入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'X', '无意义', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '01', '自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '02', '定向资产管理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '03', '集合资产管理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '04', '专项资产管理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '05', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', '0', 'T+0开通(0);', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', '2', 'T+2开通交易(2)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', '5', 'T+5开通交易(5)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', 'A', '无需在本公司签署风险揭示书(A)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_TYPE', '0', ' 数字证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_TYPE', '1', ' 动态令牌', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_TYPE', '2', '纸质', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SITE_TYPE', '0', 'MAC地址', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SITE_TYPE', '1', 'IP地址', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SITE_TYPE', '2', '电话号码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SL_CON_TYPE', '1', '先到先得', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SL_CON_TYPE', '2', '随借随用', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '0', '开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '1', '变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '2', '销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '3', '转托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '4', '撤销指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '0', '一柜通业务对象权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '1', '一柜通业务办理权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '2', '单客户敏感资料查看权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '3', '批量客户敏感资料查看权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '4', '操作员导出资料权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '5', '调试跟踪权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '6', '非现场开户权限', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '7', 'OEM到期消息提醒', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '0', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '1', '已死亡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '2', '已变更为境外身份', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '3', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '4', '遗产继承', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '5', '司法处置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPEC_ORG_TYPE', '0', '支付机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPEC_ORG_TYPE', '1', '登记机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '0', '官网', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '1', '微信', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '2', '齐富通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '3', '邮件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '4', '短信', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '5', '彩信', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '6', '现场', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '7', '电话', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '0', '每天', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '1', '每周', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '2', '每月', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '3', '每季', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '4', '每半年', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '5', '每年', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '6', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_LVL', '0', 'R1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_LVL', '1', 'R2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_LVL', '2', 'R3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_LVL', '3', 'R4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_LVL', '4', 'R5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STDS_SUBSYS_SN', '38', '上海快订', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STDS_SUBSYS_SN', '39', '深圳快订', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '00', '深圳Ａ股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '01', '深圳Ｂ股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '02', '深三板Ａ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '03', '深市港股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '05', '深圳股票期权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '10', '上海Ａ股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '11', '上海Ｂ股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '13', '沪市港股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '15', '上海股票期权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '20', '股转Ａ股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '21', '股转Ｂ股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX', '0', '深圳交易所', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX', '1', '上海交易所', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX', '2', '股转系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX_ID', 'BJEX', '股转系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX_ID', 'SHEX', '上海交易所', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX_ID', 'SZEX', '深圳交易所', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_CLS', '0', '自营', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_CLS', '1', '客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_MODE', '0', '独立', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_MODE', '1', '共享', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_TYPE', '0', '普通交易单元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_TYPE', '1', '信用交易单元', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', '1', ' 禁止etf申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', '2', ' 禁止etf赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'B', ' 禁止买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'C', ' 禁止撤指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'H', ' 禁回购注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'J', ' 禁止市价委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'Q', ' 禁止融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'R', ' 禁止融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'S', ' 禁止卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'Z', ' 禁止转托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '100', '证券买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '101', '证券卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '102', '证券可售冻结卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '103', '新股申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '104', '新股增发', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '106', '配股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '107', '要约收购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '108', '解除要约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '110', '质押入库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '111', '质押出库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '113', '市值配售新股申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '115', '质押入库且冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '116', '质押出库且解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '130', '港股通买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '131', '港股通卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '140', '国债分销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '145', '债券兑付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '146', '债券兑息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '150', '回购融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '151', '回购融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '152', '转债申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '153', '转债配债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '160', '转债转股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '161', '转债回售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '162', '买断回购融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '163', '买断回购融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '164', '质押回购融资', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '165', '质押回购融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '170', '货币基金申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '171', '货币基金赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '172', '货币基金收益结转', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '175', '资管份额转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '176', '资管份额转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '180', 'ETF网下现金认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '181', 'ETF申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '182', 'ETF赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '183', 'ETF网上现金认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '184', 'ETF网下股票认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '187', '跨境ETF申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '188', '跨境ETF赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '190', '开放式基金认购(沪)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '191', '开放式基金跨市场转托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '192', '开放式基金分红方式设定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '193', '开放式基金转换', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '194', '开放式基金申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '195', '开放式基金赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '196', '基金红利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '197', 'TA发起业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '198', '开放式基金认购(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '200', '权证创设', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '201', '权证注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '202', '证券给付型认购权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '203', '证券给付型认沽权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '204', '现金结算型认购权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '205', '现金结算型认沽权证行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '206', '自主行权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '208', 'ETF申购赎回现金差额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '209', 'ETF申购赎回现金替代多退少补', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '220', 'B转H股业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '230', '国债预发行买入开仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '231', '国债预发行卖出开仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '232', '国债预发行买入平仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '233', '国债预发行卖出平仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '260', '挂牌公司股票定价买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '261', '挂牌公司股票定价卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '262', '挂牌公司股票互报成交确认买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '263', '挂牌公司股票互报成交确认卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '264', '挂牌公司股票成交确认买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '265', '挂牌公司股票成交确认卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '300', '指定交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '301', '撤销指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '302', '回购指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '303', '回购撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '330', '证券转托管出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '340', '密码服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '345', '议案投票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '346', '网络投票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '350', '资管份额转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '355', '资管份额转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '499', '证券转换业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '500', '新股登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '501', '股份托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '502', '合并证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '503', '更换证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '504', '红股到帐', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '505', '股息派发', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '506', '退款退息明细', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '508', '证券转托管入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '510', 'ETF认购到账', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '600', '司法冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '601', '司法冻结解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '602', '司法冻结续冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '603', '司法冻结轮候', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '604', '司法冻结轮候解除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '610', '证券冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '611', '证券解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '612', '证券过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '613', '股份转入转出业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '614', '债券存提券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '620', '证券转换', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '623', '股份特殊调账业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '624', '法人转配股转股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '640', '三板买卖回退', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '700', '担保品买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '701', '担保品卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '702', '融资买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '703', '融券卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '704', '买券还券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '705', '卖券还款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '706', '融资平仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '707', '融券平仓', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '708', '担保品转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '709', '担保品转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '710', '现券还券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '711', '余券划转', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '800', '国债分销买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '801', '国债分销卖出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '802', '摘牌', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '820', '盘后基金－－合并业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '821', '盘后基金－－拆分业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '825', '跨市场ETF现金申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '826', '跨市场ETF现金赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '827', '跨市场ETF申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '828', '跨市场ETF赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '829', '盘后跨市场ETF申赎冲销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '830', '上证LOF认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '831', '上证LOF申购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '832', '上证LOF赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '833', '上证LOF转托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '834', '上证LOF拆分', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '835', '上证LOF合并', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '850', '限售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '855', '报价回购初始交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '856', '报价回购购回交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '865', '报价回购质押入库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '866', '报价回购质押出库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '870', '约定购回初始交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '871', '约定购回购回交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '872', '约定购回调账回补', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '873', '约定购回调账购回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '880', '股票质押初始交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '881', '股票质押购回交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '882', '股票质押补充质押', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '883', '股票质押解除质押', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '884', '股票质押终止购回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '885', '股票质押违约处置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '950', '证券买入(大宗)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '951', '证券卖出(大宗)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '981', '柜台单费处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '991', '柜台股息红利差别化个税补税处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '992', '柜台股权激励自主行权延时扣税处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '0', '无效业务行为', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '100', '委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '500', '买入成交清算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '510', '卖出成交清算', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '520', '配股款冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '521', '配股缴款(上海)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '522', '退款退息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '523', '配股到帐', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '524', '配股缴款(深圳)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '530', '要约确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '531', '要约股份过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '532', '要约资金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '534', '要约解除确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '550', '全部申购记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '551', '申购不确认记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '552', '配号记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '553', '全部有效申购记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '554', '老股东优先可配售记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '555', '市值配售确认记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '556', '中签记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '601', '质押入库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '602', '质押出库', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '610', '融资回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '611', '融资购回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '612', '融券回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '613', '融券购回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '614', '履约金交纳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '615', '买断回购到期通知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '616', '履约金返还', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '620', '确认债券记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '621', '确认股票记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '622', '零债资金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '630', '可转债回售确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '631', '可转债回售资金返还', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '700', '全部申购记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '701', '申购不确认记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '702', '全部有效申购记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '703', '认购结果记录', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '704', 'TA认购确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '710', '申购基金过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '711', '申购成份股过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '712', '申购现金替代过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '713', '现金差额应收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '714', '现金差额应付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '720', '赎回基金过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '721', '赎回成份股过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '722', '赎回现金替代过户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '724', '现金替代退款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '725', '现金替代补款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '750', '全部申购委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '751', '申购无效委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '752', 'LOF申购确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '760', '全部赎回委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '761', '赎回无效委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '762', 'LOF赎回确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '790', '权证行权申请标的应收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '791', '权证行权申请标的应付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '792', '权证行权申请资金应收', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '793', '权证行权申请资金应付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '800', '标的证券记加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '801', '标的证券记减', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '802', '行权应收资金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '803', '行权应付资金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '808', '行权交收失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '809', '卖空代为补入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '810', '合并证券帐户转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '811', '合并证券帐户转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '812', '证券转让转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '813', '证券转让转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '815', '更换证券账户转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '816', '更换证券账户转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '820', '基金转托管转出申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '821', '基金转托管转出确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '822', '基金转托管转入确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '825', '基金分红方式设置申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '826', '基金基金分红方式设置确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '830', '基金转换申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '831', '基金转换确认(目标)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '832', '基金转换确认(源)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '835', '基金红利确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '840', '普通指定状态调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '841', '回购指定状态调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '842', '指定交易股份调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '845', '证券转换转出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '846', '证券转换转入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '850', '证券转托管出', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '860', '登记公司数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '870', '基金份额冻结确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '871', '基金份额解冻确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '872', '非交易过户转入确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '873', '非交易过户转出确认', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '874', '强行调增', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '875', '强行调减', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '876', '强行赎回', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C1', '全体一码通账户资料申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C2', '全体证券账户资料申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C3', '全体证券账户使用信息申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C4', '全体适当性管理信息申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C5', '全体不合格账户信息申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CAL_MKTVAL', '0', '不计算市值', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CAL_MKTVAL', '1', '计算市值', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'A', '股票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'B', '基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'C', '投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'D', 'ETF基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'E', 'LOF基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'G', '权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'H', '国债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'I', '实物国债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'J', '企业债券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'K', '实物企债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'L', '转换债券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'M', '公司债', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'N', '报价转让证券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'O', '国债回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'P', '企债回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'Q', '买断回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'R', '质押回购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'S', '企债质押', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'T', '标准券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'U', '股票期权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'V', '股票(三板美)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'W', '指数统计', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'X', '议案投票', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'Y', '指定交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'Z', '密码服务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'z', '融资融券划转', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CUSTODY_MODE', 'A', '双向托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CUSTODY_MODE', 'E', '登记公司托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CUSTODY_MODE', 'S', '券商托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'CDDF', '撤单单费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'FXJ', '风险金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'GHF', '过户费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JSF', '经手费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JYDF', '交易单费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JYGF', '交易规费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JYSGHF', '交易所过户费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'LYJ', '履约金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'QSF', '清算费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'SXF', '手续费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'WTDF', '委托单费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'YHS', '印花税', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'YJQSF', '一级清算费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'ZGF', '证管费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'ZTGF', '转托管费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_OBJ', '0', '投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_OBJ', '1', '证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '1', '标的', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '2', '正股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '3', '成份股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '4', '现金替代', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '5', '上海ETF基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_LOT_FLAG', '0', '股或张为单位', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_LOT_FLAG', '1', '手为单位', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '0', '通常状态', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '1', '首日上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '2', '增发上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '3', '定价发行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '4', '竞价发行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '5', '国债挂牌分销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '6', '除权除息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '7', '除权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '8', '除息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '*', '未分子类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '0', '正股代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '1', '要约代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '2', '认购权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '3', '认沽权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '4', '权证创设', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '6', '配股权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'A', '申购代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'B', '申购款', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'C', '配号代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'D', '增发代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'E', '配售代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'I', '申赎代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'J', '认购代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'K', '基金转托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'L', '基金分红设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'M', '基金转换', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'R', '分销代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'S', '质押代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'Z', '转股代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUSPENDED', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUSPENDED', '1', '临时停牌', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUSPENDED', '2', '长期停牌', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TRD_EXTCLS', '0', '普通交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TRD_EXTCLS', '1', '大宗交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'GF', '国有法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'GJ', '国家股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'GZ', '固定收益类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'JJ', '基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'JN', '境内法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'JW', '境外法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PG', '配股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PS', '配售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PT', '普通股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PZ', '权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'SF', '社会法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'XL', '限售流通股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'YX', '优先法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'ZG', '职工股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBACCT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBACCT_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBACCT_TYPE', '1', '股票期权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '0', '普通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '1', '未成年', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '2', '年长者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '3', '残疾人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '4', '员工', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '5', '从业人员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '6', '境外战略投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '7', '合格境外投资者', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '8', '私募基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '9', '其他特殊参与市场的主体', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '0', '未产生影像任务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '1', '已产生影像任务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '2', '影像文件已生成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '3', '影像文件已报送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '1', '账户系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '10', '融资融券子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '11', '消费支付子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '13', 'OTC子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '16', '股票期权子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '18', '资金管理系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '2', '清算子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '27', '统一认证子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '28', 'CIF子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '3', '交易子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '30', '影像子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '31', '期货IB子系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '32', 'CRM数据中心', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '4', '数据服务中心', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '9', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '1', '查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '2', '维护', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '0', '客户风险测评(证券-个人)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '1', '基金风险控制个人客户问卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '2', '基金风险控制机构客户问卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '3', '信用账户征信资料', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '4', '创新业务测评', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '5', '股票期权适当性评估', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '6', '股票期权投资人准入标准', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '7', 'OTC风险测评', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '8', '金易贷客户风险测评', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '9', '适当性', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', 'A', '适当性试题', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', 'H', '客户回访问卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', 'S', '私募投资基金投资者风险问卷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_COL_OPT', '0', '单选', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_COL_OPT', '1', '多选', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SCORE_TYPE', '0', '累加计分方式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SCORE_TYPE', '1', '取最大值加计分方式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SCORE_TYPE', '2', '全对计分方式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '0', '集中交易系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '1', '融资融券系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '2', 'OTC系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '3', '股票期权系统', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '4', '集中交易系统（存在客户号）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '9', '不同步', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_TYPE', '0', '客观', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_TYPE', '1', '主观', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '0', '交易时间内', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '1', '同步成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '2', '同步失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '3', '未同步处理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '0', '集中交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '1', '融资融券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '2', 'OTC', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '3', '股票期权', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '4', '公募基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '10', '证券账户开户(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '11', '证券账户合并(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '12', '证券账户注销(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '13', '挂失补办不换号(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '14', '挂失补办换新号(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '15', '证券账户资料变更(1)(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '16', '证券账户资料变更(2)(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '17', '证券账户资料查询(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '18', '网络服务开通(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '19', '休眠账户激活(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1A', '使用信息申报(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1B', '使用信息撤销(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1C', '使用信息查询(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1D', '报送创业板适当性管理信息(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '2A', '合伙人信息申报(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '2B', '合伙人信息撤销(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '2C', '合伙人信息查询(深)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_DCL_ID', '00', 'G2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_DCL_ID', '01', 'G3', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_DCL_ID', '10', '00100', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_DCL_ID', '11', '23112', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_DCL_ID', '20', 'G2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_DCL_ID', '21', 'G2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '00', '个人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '50', '境外基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '51', '境外证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '52', '境外代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '53', '境外一般机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '54', '境外银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '55', '境外保险公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '61', '综合类证券公司(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '62', '综合类证券公司(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '63', '经纪类证券公司(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '64', '经纪类证券公司(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '65', '银行(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '66', '银行(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '67', '信托投资公司(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '68', '信托投资公司(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '69', '封闭式证券投资基金(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '70', '封闭式证券投资基金(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '71', '开放式证券投资基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '72', '其它证券投资基金(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '73', '其它证券投资基金(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '74', '基金管理公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '75', '社保基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '76', '保险公司(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '77', '保险公司(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '78', '其他金融机构(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '79', '其他金融机构(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '85', '国有企业(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '86', '国有企业(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '87', '非国有企业(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '88', '非国有企业(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '89', '中外合资\合作企业(上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '90', '中外合资\合作企业(非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '91', '中外合资\合作企业(国有控股上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '92', '中外合资\合作企业(国有控股非上市)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '93', '外商独资企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '94', '事业法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '95', '社团法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H1', '普通合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H2', '特殊普通合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H3', '有限合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H4', '非法人非合伙制创业投资企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '00', '深A个人账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '01', '深A机构账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '02', '深A个人基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '03', '深A机构基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '04', '深B个人账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '05', '深B机构账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '06', '产品A股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '07', '产品基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '08', '个人信用证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '09', '机构信用证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '10', '产品B股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '11', '产品信用账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '12', '合伙人A股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '13', '合伙人B股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '00', 'A股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '01', '基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '02', 'B股账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '03', '信用证券账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE2', '0', '个人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE2', '1', '机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE2', '2', '产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_DLE_TYPE', 'CD', '撤单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_DLE_TYPE', 'CX', '查询', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_DLE_TYPE', 'WT', '委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJDJ', '司法冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJJD', '司法解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJLJ', '解除轮候', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJXD', '续冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'PGRG', '配股认购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'QPSB', '红利选择权申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'SGBG', '收购保管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'TPJG', '投票结果', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'TPSB', '投票申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'ZT01', '报盘转托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'ZT03', '转托管反向调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '01', '企业法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '02', '机关法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '03', '事业法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '04', '社团法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '05', '工会法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '09', '其他非金融机构法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '10', '证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '11', '银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '12', '信托投资公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '13', '基金管理公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '14', '保险公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '19', '其他金融机构法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '21', '普通合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '22', '特殊普通合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '23', '有限合伙企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '24', '非法人非合伙制创投企业', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '25', '私募基金管理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '31', '境外一般机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '32', '境外代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '33', '境外证券公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '34', '境外基金公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '41', '破产管理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '51', '中国金融期货交易所', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '61', '基金管理公司子公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '62', '财务公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '63', '证券公司子公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '64', '期货公司子公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '65', '产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', 'QH', '期货公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJDJ', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJJD', '冻结解冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJKT', '冻结股份可售限制调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJLH', '轮候冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJLJ', '轮候冻结解除', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJXD', '冻结续冻', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'FXFQ', '新股认购放弃', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'TG11', '沪市账户挂账补登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'ZQKZ', '债券跨市场转出申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'ZTTZ', '转托管出错调整', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'ZTXS', '限售股及未上市股份转托管', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '00', '已接受数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '01', '业务类别无效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '02', '证券账户与证件号码不匹配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '03', '账户无效', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '04', '重复报送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '05', '本日不受理该类数据申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '06', '其它错误', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'GF', '不合格账户规范数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'QL', '剩余不合格账户清理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'SY', '剩余不合格账户数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'TC', '确定休眠账户时应剔除的账户数据', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'WG', '违规（不合格）账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'ZZ', '已终止托管关系的不合格账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_LIST_STATUS', '0', '无特殊限制条件,是否限售由其股份性质决定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_LIST_STATUS', 'N', '已登记,暂不允许上市', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_TRUST_TYPE', 'CD', '撤单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_TRUST_TYPE', 'WT', '申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '11', '身份不对应', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '12', '身份虚假', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '13', '代理关系不规范', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '14', '资料不规范', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '15', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '21', '已注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '22', '已规范为合格账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '31', '已规范为合格账户，申请撤销账户另库存放，恢复证券账户正常状态', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '32', '不能规范为合格账户，申请撤销卖出限制，以便清空证券后予以注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '33', '仅在券商柜台销户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_CLS', '0', '临柜业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_CLS', '1', '复核业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '0', '临柜业务办理 ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '1', '特殊功能复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '2', '功能复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '3', '复核业务办理', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '4', '账户业务复核（深）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '5', '账户业务复核（沪）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '6', '账户业务提交（深）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '7', '账户业务提交（沪）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '8', '港股通交易权限审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_RESIDENT_TYPE', '1', '仅为中国税收居民', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_RESIDENT_TYPE', '2', '仅为非居民', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_RESIDENT_TYPE', '3', '既是中国税收居民又是其他国家(地区)税收居民', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_TYPE', '0', '一般纳税人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_TYPE', '1', '小规模纳税人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_TYPE', '2', '非增值税纳税人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TA_ORG_CLS', '0', '普通机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TA_ORG_CLS', '1', '银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TA_ORG_CLS', '3', '基金公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '000', '视频模板1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '001', '视频模板2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '002', '视频模板3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '003', '视频模板4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '004', '视频模板5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TOPACCT_STATUS', '0', '未签约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TOPACCT_STATUS', '1', '已签约', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '0', '普通证券交易帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '1', '信用证券交易帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '2', '法人帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '3', '回购帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '4', '机构帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '5', '自营帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '6', '国债帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', 'A', '信用帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '0', '个人帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '1', '机构帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '2', '个人信用帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '3', '机构信用帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '4', '个人基金帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '5', '机构基金帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '6', '产品普通账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '7', '产品基金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '8', '产品信用账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '9', '境外账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '1', '挂失', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '2', '冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '3', '司法冻结', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '4', '休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '5', '禁买', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '6', '禁卖', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_TYPE', '0', '境内帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_TYPE', '1', '境外帐户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRD_DATE_FLAG', '0', '非交易日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRD_DATE_FLAG', '1', '是交易日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TREG_STATUS', '0', '未指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TREG_STATUS', '1', '首日指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TREG_STATUS', '2', '已指定', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '0', '未发送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '1', '已发送', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '2', '处理成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '3', '处理失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_TYPE', 'C', '撤单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_TYPE', 'S', '申报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H01', '权益登记', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H05', '结算汇兑比率', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H06', '投票公告', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H07', '现金收购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H08', '股份收购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H09', '现金和股份收购', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H10', '股份分拆合并', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H12', '投票议案', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H13', '公开配售/要约出售', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H14', '供股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H15', '证券注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '1', '身份不对应', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '2', '身份虚假', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '3', '代理关系不规范', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '4', '资料不规范', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '5', '风险处置休眠', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '6', '中国结算认定不合格（该项在证券公司申报时不适用）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '9', '其它', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_TRD_LIMT', '1', '中止交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_TRD_LIMT', '2', '允许卖出、禁止买入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '0', '交易时间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '1', '非交易时间', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '2', '已经重新生成流水', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '3', '作废', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '0', '用户代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '1', '资金账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '2', '磁卡编码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '4', '股东代码/股东内码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '5', '身份证号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '6', '银行账户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '7', '手机号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '8', 'QQ号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '9', 'TA账号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'A', '护照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'B', '军官证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'C', '营业执照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'D', '光大E账通号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'E', '用户昵称', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'F', '期货账号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'G', '一户通账号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '0', '结算法人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '1', '客户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '2', '操作员', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '3', '经纪人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '4', '代理人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_TYPE', '0', '个人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_TYPE', '1', '机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_TYPE', '2', '产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '0', '登录/交易', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '1', '资金业务', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '2', '信用交易/登录密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '3', '信用资金密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '4', '股票期权交易密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '5', '股票期权资金密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '6', 'OTC交易密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '7', 'OTC资金密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '8', '消费支付密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', 'W', '网厅用户密码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VAL_TYPE', '0', '会费', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VAL_TYPE', '1', '优惠券', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '1', '私家车', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '2', '公务车', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '3', '公共交通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '4', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '000', '关键资料变更', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '001', '专业投资者开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '002', '融资融券开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '003', '股票期权开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '004', '股票期权知识答题', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '005', '股票账户开户（个人）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '006', '股票账户开户（机构）', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '007', '风险揭示标志设置', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '008', '经纪业务开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '010', '专业投资者注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '011', '休眠不合格客户激活', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '100', '中小企业私募债权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '101', '分级基金权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '102', '退市股票权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '103', '股转系统权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '104', '港股通权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '105', '债券合格投资者权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '106', '创业板协议开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '107', '私募基金权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '108', '股票质押回购权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '109', '债券专业投资者权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '110', '沪深债券风险管控权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '111', '优先股合格投资者权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '112', '创新业务权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '113', '两网及退市公司股份转让权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '114', '深圳暂停上市债券交易权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '115', '国债预发行投资者权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '116', '上海风险警示股交易权限开通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '117', '客户征信', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '118', '基金账户开户', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '200', 'OTC高风险产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '300', '私募基金产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_FMT', '0', 'rmvb', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '1', '待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '2', '审核未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '3', '未上传', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '00', '信息告知类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '10', '风险警示类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '20', 'OTC高风险产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '30', '私募基金产品', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '1', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '2', '会籍暂停', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '3', '中止', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '5', '待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '9', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_TYPE', 'A', '钻石', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_TYPE', 'B', '铂金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_TYPE', 'C', '黄金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SPEC_TYPE', '0', 'VIP黑名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SPEC_TYPE', '1', 'VIP白名单', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '0', '未报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '1', '已报', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '2', '成功', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '3', '失败', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '0', '清算日期', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '1', '存管银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '2', '存管方式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '3', '资金性质', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '4', '资金用途', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '5', '业务发生机构', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '6', '业务发生银行', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '7', '市场', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '8', '板块', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '9', '席位代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'A', '证券类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'B', '证券代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'C', 'TA公司', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'D', 'TA代码', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '0', '登记结算划付凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '1', '存管银行间资金调整凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '2', '保证金调整凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '3', '银行流水调账凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '4', '资金结息凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '5', '开代基金结算划付凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '6', '佣金收付凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '7', '手工记账凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '8', '申购款划付凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '9', '认购款划付凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', 'A', 'ETF退补款凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_TYPE', '0', '原始凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_TYPE', '1', '系统凭证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '0', '网上自助', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '1', '视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '2', '双人见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '3', '手机自助', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_CHK_RESULT', '0', '待复核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_CHK_RESULT', '1', '通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_CHK_RESULT', '2', '未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '01', '数字证书申请', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '02', '视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '03', '数字证书发放', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '04', '身份验证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '05', '风险揭示与投资者教育', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '06', '风险测评', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '07', '基本信息录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '08', '其他信息录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '09', '影像上传', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '10', '视频见证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '11', '资料待审核', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '12', '审核未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '13', '审核通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '15', '待回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '16', '回访未通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '17', '回访通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '18', '证券账户开立完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '19', '业务复核通过', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '97', '快速开户资料录入', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '98', '快速开户完成', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '99', '业务已撤销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '0', '星期日', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '1', '星期一', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '2', '星期二', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '3', '星期三', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '4', '星期四', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '5', '星期五', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '6', '星期六', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WITHORD_FLAG', '0', '不允许撤销委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WITHORD_FLAG', '1', '允许撤销委托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_CLS', '0', '认购权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_CLS', '1', '认沽权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_EXE_MODE', 'A', '美式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_EXE_MODE', 'B', '百慕大式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_EXE_MODE', 'E', '欧式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_SETT_MODE', 'C', '现金给付方式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_SETT_MODE', 'S', '证券给付方式', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YES_NO', '0', '否', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YES_NO', '1', '是', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YMT_STATUS', '0', '正常', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YMT_STATUS', '1', '注销', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YOUNG_FLAG', '0', '成年人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YOUNG_FLAG', '1', '未成年人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YWLB', '1', '身份证号需要升位', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YWLB', '2', '需补填组织机构代码证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YWLB', '3', '需修改证件类型', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '01', '居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '02', '护照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '04', '社会保障号', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '05', '军人证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '07', '港澳居民来往内地通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '08', '台湾居民来往大陆通行证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '09', '外国人永久居留证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0A', '香港居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0B', '澳门居民身份证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0C', '户口本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0D', '文职证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0E', '警官证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '10', '营业执照', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '11', '登记证书', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '12', '组织机构代码证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '13', '批文', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '99', '其他证件', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '0', '无限售流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '1', '权益次数:1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '2', '权益次数:2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '3', '权益次数:3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '4', '权益次数:4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '5', '权益次数:5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '6', '权益次数:6', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '7', '权益次数:7', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '8', '权益次数:8', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '9', '权益次数:9', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'A', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'B', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'C', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'F', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'J', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'N', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'Q', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'Z', '限售或非流通', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'DF', '兑付', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'DX', '兑息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'HL', '红利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'P ', '配股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'S ', '送股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'Z ', '转配', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '001', '冻结（含权利受限登记）证券明细数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '002', '待交收证券明细数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '005', '跨市场转登记挂账明细数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '006', '当日退登记证券股份明', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '007', '证券账户质押券余额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '008', '证券账户标准券余额', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '009', '询价增发保留权数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '010', '权利受限登记数量', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '012', '当前有效的质押物明细', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H01', '港股通权益登记通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H05', '港股通结算汇兑比率通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H06', '港股通投票公告通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H07', '港股通现金收购通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H08', '港股通股份收购通知', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H09', '港股通现金和股份收购通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H10', '股份分拆合并通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H12', '港股通投票议案通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H13', '港股通公开配售通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H14', '港股通供股通知信息', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'GF', '国有法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'GJ', '国家股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'GZ', '固定收益类', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'JJ', '基金', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'JN', '境内法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'JW', '境外法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PG', '配股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PS', '配售股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PT', '无限售流通股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PZ', '权证', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'SF', '社会法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'XL', '限售流通股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'YX', '优先法人股', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'ZG', '职工股', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '00', '融资融券激活回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '01', '协议类激活回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '02', '基金类激活回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '99', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_WAY', '0', '电话回访', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'VISIT_WAY', '1', '邮件回访', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_WAY', '2', '其他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKMAN_FLAG', '0', '普通联系人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKMAN_FLAG', '1', '融资融券联系人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKMAN_FLAG', '2', '创业板联系人', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AD', '安道尔', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AE', '阿联酋', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AF', '阿富汗', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AG', '安提瓜和巴布达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AI', '安圭拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AL', '阿尔巴尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AM', '亚美尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AO', '安哥拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AQ', '南极洲', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AR', '阿根廷', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AS', '美属萨摩亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AT', '奥地利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AU', '澳大利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AW', '阿鲁巴', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AX', '奥兰群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AZ', '阿塞拜疆', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BA', '波黑', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BB', '巴巴多斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BD', '孟加拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BE', '比利时', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BF', '布基纳法索', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BG', '保加利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BH', '巴林', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BI', '布隆迪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BJ', '贝宁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BL', '圣巴泰勒米岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BM', '百慕大', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BN', '文莱', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BO', '玻利维亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BQ', '荷兰加勒比区', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BR', '巴西', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BS', '巴哈马', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BT', '不丹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BV', '布韦岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BW', '博茨瓦纳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BY', '白俄罗斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BZ', '伯利兹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CA', '加拿大', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CC', '科科斯群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CD', '刚果(金)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CF', '中非', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CG', '刚果(布)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CH', '瑞士', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CI', '科特迪瓦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CK', '库克群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CL', '智利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CM', '喀麦隆', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CN', '中国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CO', '哥伦比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CR', '哥斯达黎加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CU', '古巴', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CV', '佛得角', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CX', '圣诞岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CY', '塞浦路斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CZ', '捷克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DE', '德国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DJ', '吉布提', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DK', '丹麦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DM', '多米尼克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DO', '多米尼加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DZ', '阿尔及利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EC', '厄瓜多尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EE', '爱沙尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EG', '埃及', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EH', '西撒哈拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ER', '厄立特里亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ES', '西班牙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ET', '埃塞俄比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FI', '芬兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FJ', '斐济群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FK', '马尔维纳斯群岛(福克兰)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FM', '密克罗尼西亚联邦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FO', '法罗群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FR', '法国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GA', '加蓬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GB', '英国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GD', '格林纳达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GE', '格鲁吉亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GF', '法属圭亚那', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GG', '根西岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GH', '加纳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GI', '直布罗陀', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GL', '格陵兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GM', '冈比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GN', '几内亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GP', '瓜德罗普', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GQ', '赤道几内亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GR', '希腊', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GS', '南乔治亚岛和南桑威奇群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GT', '危地马拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GU', '关岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GW', '几内亚比绍', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GY', '圭亚那', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HK', '香港', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HM', '赫德岛和麦克唐纳群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HN', '洪都拉斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HR', '克罗地亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HT', '海地', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HU', '匈牙利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ID', '印尼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IE', '爱尔兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IL', '以色列', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IM', '马恩岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IN', '印度', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IO', '英属印度洋领地', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IQ', '伊拉克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IR', '伊朗', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IS', '冰岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IT', '意大利', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JE', '泽西岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JM', '牙买加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JO', '约旦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JP', '日本', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KE', '肯尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KG', '吉尔吉斯斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KH', '柬埔寨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KI', '基里巴斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KM', '科摩罗', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KN', '圣基茨和尼维斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KP', '朝鲜', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KR', '韩国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KW', '科威特', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KY', '开曼群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KZ', '哈萨克斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LA', '老挝', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LB', '黎巴嫩', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LC', '圣卢西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LI', '列支敦士登', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LK', '斯里兰卡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LR', '利比里亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LS', '莱索托', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LT', '立陶宛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LU', '卢森堡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LV', '拉脱维亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LY', '利比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MA', '摩洛哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MC', '摩纳哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MD', '摩尔多瓦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ME', '黑山', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MF', '法属圣马丁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MG', '马达加斯加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MH', '马绍尔群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MK', '马其顿', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ML', '马里', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MM', '缅甸', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MN', '蒙古', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MO', '澳门', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MP', '北马里亚纳群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MQ', '马提尼克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MR', '毛里塔尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MS', '蒙塞拉特岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MT', '马耳他', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MU', '毛里求斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MV', '马尔代夫', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MW', '马拉维', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MX', '墨西哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MY', '马来西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MZ', '莫桑比克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NA', '纳米比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NC', '新喀里多尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NE', '尼日尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NF', '诺福克岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NG', '尼日利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NI', '尼加拉瓜', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NL', '荷兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NO', '挪威', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NP', '尼泊尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NR', '瑙鲁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NU', '纽埃', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NZ', '新西兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'OM', '阿曼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PA', '巴拿马', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PE', '秘鲁', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PF', '法属波利尼西亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PG', '巴布亚新几内亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PH', '菲律宾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PK', '巴基斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PL', '波兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PM', '圣皮埃尔和密克隆', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PN', '皮特凯恩群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PR', '波多黎各', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PS', '巴勒斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PT', '葡萄牙', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PW', '帕劳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PY', '巴拉圭', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'QA', '卡塔尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RE', '留尼汪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RO', '罗马尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RS', '塞尔维亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RU', '俄罗斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RW', '卢旺达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SA', '沙特阿拉伯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SB', '所罗门群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SC', '塞舌尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SD', '苏丹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SE', '瑞典', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SG', '新加坡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SH', '圣赫勒拿', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SI', '斯洛文尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SJ', '斯瓦尔巴群岛和扬马延岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SK', '斯洛伐克', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SL', '塞拉利昂', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SM', '圣马力诺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SN', '塞内加尔', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SO', '索马里', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SR', '苏里南', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SS', '南苏丹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ST', '圣多美和普林西比', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SV', '萨尔瓦多', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SY', '叙利亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SZ', '斯威士兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TC', '特克斯和凯科斯群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TD', '乍得', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TF', '法属南部领地', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TG', '多哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TH', '泰国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TJ', '塔吉克斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TK', '托克劳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TL', '东帝汶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TM', '土库曼斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TN', '突尼斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TO', '汤加', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TR', '土耳其', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TT', '特立尼达和多巴哥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TV', '图瓦卢', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TW', '台湾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TZ', '坦桑尼亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UA', '乌克兰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UG', '乌干达', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UM', '美国本土外小岛屿', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'US', '美国', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UY', '乌拉圭', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UZ', '乌兹别克斯坦', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VA', '梵蒂冈', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VC', '圣文森特和格林纳丁斯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VE', '委内瑞拉', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VG', '英属维尔京群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VI', '美属维尔京群岛', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VN', '越南', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VU', '瓦努阿图', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'WF', '瓦利斯和富图纳', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'WS', '萨摩亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'YE', '也门', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'YT', '马约特', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ZA', '南非', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ZM', '赞比亚', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ZW', '津巴布韦', '0'
 GO 