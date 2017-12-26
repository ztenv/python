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
 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '0', '��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '2', '�޸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCESS_RIGHTS', '3', 'ɾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_AGTORG', '012345', '��֤�Ƽ�33', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '01', 'һ��ͨ�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '02', '֤ȯ�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '03', '�˻�ע�������޸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '04', 'һ��ͨ�˻�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '05', '֤ȯ�˻�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '06', '�˻�ע�����ϲ�ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '07', '֤ȯ�˻���ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '08', 'һ��ͨ�˻���ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '09', '�״ν������ڲ�ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '10', '�˻����Ϻ˶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '11', '֤ȯ�˻�ʹ����Ϣά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '12', '�ϻ�����Ϣά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '13', '�ʵ��Թ�����Ϣά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '14', '��Ϣ������ѯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '15', '�ͻ��ؼ���Ϣ�޸���ʷ��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '16', '�����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '17', '���ϸ��˻��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '18', '֤ȯ�˻�������ϵȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '19', '֤ȯ�˻������ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '20', '�����˻�������ϵ������Ϣ��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '22', '��Ʒ�ͻ�һ��ͨ�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '23', '�����Ϣ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '25', '������Ϣ�˲�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_EXCODE', '26', '���ϸ��˻���ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '1', '�ѷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '2', '����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '3', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCTBIZ_STATUS', '4', 'ί��ȷ�ϳɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '2', '����ί�з�ʽ�Ŀ����ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '3', '��������ܵ�ǩԼ����Լ�����������У�ʹ��������˻�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '4', '��ʧ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '5', '���ᡢ�ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '6', '���ơ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '7', '�ϲ�֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '8', '����֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_BIZ', '9', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '2', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '3', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '5', '�ݼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '7', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '8', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'A', '���ϸ�˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'C', '�е�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'E', '�еǲ��ϸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'G', '�ڲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'J', '�ڲ����ϸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'L', '�쳣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'M', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STAT', 'N', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '00', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '01', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '02', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '03', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '04', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '05', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_STATUS', '06', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '11', '����A���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '12', '����B���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '13', '���з��ʽ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '14', '����A������֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '15', '��������Ʒ��Լ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '21', '����A���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '22', '����B���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '23', '���з��ʽ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '24', '����A������֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '25', '��������Ʒ��Լ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '31', 'ȫ����С��ҵ�ɷ�ת��ϵͳ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACCT_TYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACK_STATUS', '0', 'δȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACK_STATUS', '1', '����ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ACK_STATUS', '2', '����ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '1', 'ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '100', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '101', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '103', '�¹��깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '104', '�¹�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '106', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '107', 'ҪԼ�չ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '108', '���ҪԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '110', '��Ѻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '111', '��Ѻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '115', '��Ѻ����Ҷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '116', '��Ѻ�����ҽⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '140', '��ծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '145', 'ծȯ�Ҹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '146', 'ծȯ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '150', '�ع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '151', '�ع���ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '152', 'תծ�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '153', 'תծ��ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '160', 'תծת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '161', 'תծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '162', '��ϻع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '163', '��ϻع���ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '164', '��Ѻ�ع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '165', '��Ѻ�ع���ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '170', '�����깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '180', 'ETF�����ֽ��Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '181', 'ETF�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '182', 'ETF���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '183', 'ETF�����ֽ��Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '184', 'ETF���¹�Ʊ�Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '190', '����ʽ�����Ϲ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '191', '����ʽ������г�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '192', '����ʽ����ֺ췽ʽ�趨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '193', '����ʽ����ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '194', '����ʽ�����깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '195', '����ʽ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '196', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '197', 'TA����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '198', '����ʽ�����Ϲ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '2', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '200', 'Ȩ֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '201', 'Ȩ֤ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '202', '֤ȯ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '203', '֤ȯ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '204', '�ֽ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '205', '�ֽ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '208', 'ETF�깺����ֽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '209', 'ETF�깺����ֽ���������ٲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '3', '��ش���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '300', 'ָ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '301', '����ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '302', '�ع�ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '303', '�ع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '330', '֤ȯת�йܳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '340', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '345', '�鰸ͶƱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '4', '���ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '499', '֤ȯת��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '5', '��ӡ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '500', '�¹ɵǼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '501', '�ɷ��й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '502', '�ϲ�֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '503', '����֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '504', '��ɵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '505', '��Ϣ�ɷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '506', '�˿���Ϣ��ϸ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '508', '֤ȯת�й���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '6', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '600', '˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '601', '˾������ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '602', '˾����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '603', '˾�������ֺ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '604', '˾�������ֺ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '610', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '611', '֤ȯ�ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '612', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '613', '�ɷ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '620', '֤ȯת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '800', '��ծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '801', '��ծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '802', 'ծȯժ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZ', '850', '���۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZRL', '0', '�ʽ�Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_BIZRL', '1', '����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_FLAG', '0', '����֤ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGENT_FLAG', '1', '����֤ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGMT_LVL', '0', '�ͻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGMT_LVL', '1', '�ʲ��˻���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGMT_LVL', '2', '�����˻���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGREEMENT_ID', '1', '��ʾ1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGREEMENT_ID', '201', '��ʾ201', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_CLS', '0', '��ͨ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_TYPE', '0', '��֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AGT_TYPE', '1', '�ٹ���Ȩ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ALLOTED_OFFER', '0', '�ֽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ALLOTED_OFFER', '1', '��ǰ�˽�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '*', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '0', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '1', 'һ����տͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '2', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_LVL', '3', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'A', 'ϴǮ-�ͷ����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'B', 'ϴǮ-�ϸ߷�����ҵ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'C', 'ϴǮ-�ϸ߷��յ����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'D', 'ϴǮ-�쳣�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'E', 'ϴǮ-�����з����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'F', 'ϴǮ-����߷����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'G', 'ϴǮ-��Σ��Ա�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'H', 'ϴǮ-����Υ����ϴǮ���ֲ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'I', 'ϴǮ-�����������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'J', 'ϴǮ-���ɽ����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RANK', 'K', 'ϴǮ-�����߷����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '1', '�ͷ��յȼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '2', '�еͷ��յȼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '3', '�з��յȼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '4', '�߷��յȼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AML_RISK_LEVEL', '5', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '0', '�۸��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '1', '��ֵ������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '2', '�����㣬��ֵΪ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AMT_CAL_METHOD', '3', 'ȡ���������Ѽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '0', '0-10��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '1', '10-30��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '2', '30-50��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '3', '50-100��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '4', '100-300��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANNUAL_INCOME', '5', '300������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANS_OPTION_TYPE', '0', '�ַ���ƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANS_OPTION_TYPE', '1', '��ֵƥ��(ǰ�պ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANS_OPTION_TYPE', '2', '����ƥ��(ǰ�պ������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '00', '���ز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '01', '��Ʒ�չ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '02', '������ó��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '03', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '04', '��Ҷһ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '05', '�ɻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '06', '��Ʊ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '07', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '08', '�䵱', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '09', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ANTI_MONEYLAUNDRY_TYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_STATUS', '0', '�걨������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_STATUS', '1', '�걨����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_STATUS', '2', '�걨����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_TYPE', '0', '��У��ͻ��վ��ʲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_TYPE', '1', '��У�齻�����ڿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPLY_TYPE', '2', '���߾���У��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '0', '�ʽ��ʻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '1', '�ɶ����뿪��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '10', '�ֻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '2', '�����ʻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '3', '������ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '4', '��ָ�ڻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '5', '������ܿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '6', '��֤ת�ʿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '7', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '8', '��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_BIZ', '9', '˫�˼�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '0', '��̨ԤԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '1', 'WEB��ʽԤԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '2', '����ԤԼ(��ȷ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '3', '����ԤԼ(��ȷ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '4', '���ֳ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '5', '���ֳ������¿���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_CHNL', '6', '���ֳ�����ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '0', '��A', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '1', '��A', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '2', '��B', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '3', '��B', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '4', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_OPEN_ACCT', '5', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '0', '�ֳ�ԤԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '2', '��վ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '3', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', '4', 'ת����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', 'b', 'OCRM', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_SOURCE', 'c', 'MIT', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '1', '���ͨ�����ȴ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '2', '�����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '3', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '4', 'ԤԼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '5', '���δͨ����ԤԼʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '6', '����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '7', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '8', '�����쳣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', '9', 'ȡ���ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'A', 'ȡ��ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'B', 'ȡ���쳣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'C', '�����쳣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'F', '��ʼ����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'G', '����״̬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'H', '����A�ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'I', '�������ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'J', '����A�ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'K', '��������ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'L', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'M', '�ʽ��˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'N', '�ʽ�����ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'O', '��������ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'P', '������ܿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'Q', '�ӹ���A�ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'R', '�ӹ������ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'S', '�ӹһ�A�ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'T', '�ӹһ�����ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'U', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APPT_STATUS', 'W', '����ʧ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', '2', '�Ѿܾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_STATUS', 'X', 'Ԥ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '0', '��Χ��ȱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '1', '���ż������Ŷ�ȵ�������', '0'
 GO  
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '2', '�������Ŷ�ȱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '3', '��ȱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_MDF_TYPE', '4', '���Ŷ�Ƚ�����ȱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '0', '�״�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '2', '��ȵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '3', '������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_SEQ_TYPE', '5', '�����ؼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_TYPE', '0', '�״ζ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_TYPE', '2', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APP_TYPE', '3', '������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '0', 'ҵ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '1', 'ҵ��������˳ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '2', 'ҵ���������ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '3', '��ȷ��ųɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '4', '��ȷ���ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '5', '�����˳ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'APR_STATUS', '6', '�ʸ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_FLAG', '0', '���鵵', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_FLAG', '1', '�鵵', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_SEL_FLAG', '0', '����ѡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_SEL_FLAG', '1', '��ѡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '0', 'δ��ʼ�鵵', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '1', '�鵵ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '2', '�鵵�ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_STATUS', '3', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ARCHIVE_TYPE', '1', 'ȫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ASSO_LOG_TYPE', '0', '�����еǿ�����ˮ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ASSO_LOG_TYPE', '1', '�Ϻ��еǿ�����ˮ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_REASON', '1', '1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_REASON', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '00', 'δ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '02', 'δ��ˣ��Ѵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '10', '����ˣ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '11', '����ˣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '12', '����ˣ��Ѵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_STATUS', '13', '����ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_TYPE', '0', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_TYPE', '1', '��Ƹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '1', 'Ӱ��¼����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '2', '��Ա¼����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '3', '��д���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUDIT_WRONG', '4', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_FLAG', '0', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_FLAG', '1', '����¼����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_FLAG', '2', '����ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_MODE', '0', '����֤ģʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_MODE', '1', '������֤ģʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_TYPE', '1', '֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTH_TYPE', '2', 'ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_DEFER', '0', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_DEFER', '1', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_UPD_TYPE', '0', '���ղ����Զ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AUTO_UPD_TYPE', '1', 'רҵͶ�����Զ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '01', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '02', 'Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '03', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '04', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '05', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '06', 'Ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '07', '�����Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '08', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '09', '�ղ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '10', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '11', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '12', '�����й���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'AVOCATION', '222', '111', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BACKUP_MODE', '0', 'sett_before����ǰ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BACKUP_MODE', '1', 'sett_after ����󱸷�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '1', ' ��ǿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '2', ' ���ǿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '3', ' ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '4', ' ֤ȯ�ʽ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BANK_ACCT_TYPE', '9', ' ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BARCODE_OUTPUT', '0', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BARCODE_OUTPUT', '1', ' �����ӡ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BATCH_CALL_TYPE', 'STKTRDSEND|50', '��������֤ȯ�˻�ָ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '0', '���ü���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '2', '���¼���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '3', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '4', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_MAIL_TYPE', '5', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '1', '�����ʼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '2', '�ż�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '3', '��̨��ӡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BILL_PRO_WAY', '4', 'ͨ����վ��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BITMAP_TYPE', '0', '�ڰ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BITMAP_TYPE', '1', '�Ҷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BITMAP_TYPE', '2', '��ɫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '00', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '01', '�˻���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '10', '�ʽ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '11', '�ͻ��ʽ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '12', '��˾�ʽ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '20', '֤ȯҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '21', '��A����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '22', '��A����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '23', '��B����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '24', '��B����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '25', '����A����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '26', '����۽���ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '27', '����������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '30', '����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '40', 'ծȯҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_CLS', '50', '�ڻ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510000', '�����е��˻�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510010', '����ɶ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510020', '�ɶ����ϱ��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510030', '�ɶ�������\��ʧ\ת��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510050', '�ɶ����ϲ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510060', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510070', '���ϸ��ʻ�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510071', '���г����Ǽ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510080', 'B���˻�ָ������(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510081', 'B�ɱ�������Ա(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510082', '�ϻ�����Ϣ�걨����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510092', 'B���ʻ���������Աָ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510180', '�˻�ҵ�񸴺�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510190', '�˻�ҵ���ύ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510200', '����ɶ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510210', '�ɶ����ϱ��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510220', '�ɶ����ϲ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510230', '�ɶ�����ʧ����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510240', '�ɶ�������(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510250', '�ɶ����ϲ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510260', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510270', '�������ͨ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510280', '�˻�ʹ����Ϣ�걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510281', '�ϻ�����Ϣ�걨����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510380', '�˻�ҵ�񸴺�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510390', '�˻�ҵ���ύ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510400', '�ɶ�����ӡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510410', '�е��˻�ҵ��ͳ��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510415', '�е��˻�ҵ��ͳ��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNCCODE', '350510420', '�е��˻�ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '100000002', '����OTC�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '100000003', '����OTC�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '200100110', '�淶��־����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '200100121', '�ͻ����ղ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '200100125', '�ͻ�ǩ��Э������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '300100030', '��������ͨ�����޸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '300100050', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '300200010', '�ͻ������ϵ��ҵ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350501010', '������ɶ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510010', '����ɶ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510020', '�ɶ����ϱ��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510030', '�ɶ�������\��ʧ\ת��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510060', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510070', '���ϸ��˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510071', '���г����Ǽ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510080', 'B���˻�ָ������(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510081', 'B�ɱ�������Ա(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510092', 'B���˻���������Աָ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510200', '����ɶ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510210', '�ɶ����ϱ��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510220', '�ɶ����ϲ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510230', '�ɶ�����ʧ����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510240', '�ɶ�������(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510260', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510270', '�������ͨ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '350510280', '�˻�ʹ����Ϣ�걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351500020', '�����֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351700010', '�����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710027', '�����û��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710035', '˽ļ�ϸ�Ͷ�����ʸ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710036', 'רҵͶ�����ʸ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '351710049', '˽ļ����Ͷ���߰���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '353000035', '��ͨ���ϱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '353000130', '���ֳ�����ɶ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '353000140', '���ֳ�����ɶ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000001', 'һ��ͨ�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000002', '֤ȯ�˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000004', '�˻�ע�������޸�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000006', 'һ��ͨ�˻�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000007', '֤ȯ�˻�ע��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000012', '֤ȯ�˻�ʹ����Ϣά��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000022', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000024', '���ϸ��˻��������(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000026', '֤ȯ�˻�������ϵά��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000028', '֤ȯ�˻���ʧ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '354000054', '�ϻ�����Ϣά�����£�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '700101010', '�ͻ�ǩ��Э�����ã����ã�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '708002009', '��Ʊ��Ȩ�˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_FUNC_CODE', '990000151', '�Ǿ�������˻���˰��Ϣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '0', '����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '1', '�ʽ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '2', '֤ȯ����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '3', '������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '4', 'ծȯ����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BIZ_TYPE', '5', '�ڻ�����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_ACCT_TYPE', '0', '���ۻع�Ͷ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_ACCT_TYPE', '1', '���ۻع�������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_ACCT_TYPE', '2', 'Լ������Ͷ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_AGREEMENT_OPERTYPE', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_AGREEMENT_OPERTYPE', '1', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '0', '����˴���ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '1', '����˴�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '2', '�ѿ�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_OPEN_STATUS', '3', '��ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '2', '�걨�ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', '3', '�걨ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BJHG_RPT_STATUS', 'S', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '2', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BKPS_BIZ_STATUS', '3', '������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BLUETOOTH_TYPE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BLUETOOTH_TYPE', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '2', '֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '3', '֤������+֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '4', '�����Ҫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '5', '(����/������/����)+֤�����+֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '6', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '7', '֤������|����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '8', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', '9', '����+������/������/������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BL_MATCH_MODE', 'A', '����+�����Ҫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUSSHARE_FLAG', '0', '�����͹���Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUSSHARE_FLAG', '1', '���͹���Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUS_OFFER', '0', '�ֽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BONUS_OFFER', '1', '��ǰ�˽�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BOOKSET', '1', '�˻�ϵͳ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BREG_STATUS', '0', 'δָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BREG_STATUS', '1', '����ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BREG_STATUS', '2', '��ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BRK_CLS', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BRK_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BRK_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '01', '��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '02', '�۹�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '03', '˽ļҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '04', '��̨�г�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '05', '��Ʊ��Ȩҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '06', '������ȯҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '07', '�Ϲ����깺���⿪��ʽ���𡢻���ר���Ӽƻ����ʹ���Ʋ�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '08', '����ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '09', '����Ͷ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'BUS_TYPE', '10', '����Ͷ�˲�Ʒ�����Ͷ�˷���ʱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '1', 'ϵͳÿ��Ԥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '2', 'ϵͳ�������Լ�˽����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '3', 'ϵͳ���㶨�ڿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_INT_MODE', '9', 'ȡ�ܲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_TYPE', '0', '���շ�Ʒ�ֶ�����Ӷ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAL_TYPE', '1', '���շ�Ʒ�ֻ��ܷ�Ӷ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_FLAG', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_FLAG', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '1', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '2', '�ѱ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CANCEL_STATUS', '3', '�Ѷ���ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAPITAL_ATTR', '1', '�����ʱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAPITAL_ATTR', '2', '���ʣ����ʡ����������ʣ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CAPITAL_ATTR', '3', '�����ʱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CC_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CC_STATUS', '1', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CC_STATUS', '2', '��ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '0', '����¼������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '1', '������˳ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '2', '�������ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '3', '���������ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '4', '��������ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '5', '�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', '6', '���ŵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CDT_APPL_STATUS', 'X', '���ŵ���δ��ʼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '0', ' Զ��ʵʱ����Ƶ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '1', ' ��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '2', ' ˫�˼�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_BIZ', '3', ' �ٹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '00', ' Ӫҵ��ѡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '01', ' �����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '02', ' Ӱ���ϴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '03', ' ��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '04', ' ��֤δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '05', ' ��֤ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '06', ' ҵ�񸴺�ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_PHASE', '07', ' ����֤�鸴�˲�ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '1', ' ֤��δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '2', ' ֤����Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '3', ' ֤���Ѷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_STATUS', '4', ' ֤��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '1', ' ������ͨ��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '10', ' ֤���������������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '11', ' WEBվ��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '12', ' ����ǩ��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '2', ' ������ͨӲ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '3', ' ���˸߼�Ӳ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '4', ' ��ҵ��ͨ��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '5', ' ��ҵ��ͨӲ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '6', ' ��ҵ�߼�Ӳ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '7', ' ��ҵԱ����ͨ��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '8', ' ��ҵԱ����ͨӲ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CERT_TYPE', '9', ' ��ҵԱ���߼�Ӳ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CFG_TYPE', '0', '�������֤ȯ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CFG_TYPE', '1', '�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '0', '��̨ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '1', 'WEB��̨ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '2', '�绰ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '3', 'ˢ��ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '4', '�ȼ�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '5', '����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '6', '�ֻ�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '7', '����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '8', 'Զ��ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', '9', '����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'H', '�ٶ�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'a', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'b', '�Ǵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'c', '�ֻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHANNEL', 'd', '����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_HIST', '0', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_HIST', '1', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '0', '�������ڵ�һ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '1', '֤�������һ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '2', 'ĳһ�ַ�����ռ�ܳ���һ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '3', '˳�������ݼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '4', '���ܱ����ֵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '5', '�ƶ��绰��һ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '6', '�̶��绰��һ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '7', 'ĳһ���ַ��������ֳ���ռ�ܳ��ȵ�һ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '8', '�����н��������ַ�������ͬ�ַ�δ�жϳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', '9', '�ظ��ַ����ַ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHECK_WEAK', 'A', '����������ݼ��ַ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '0', 'ת�����з���,��֤ȯ��û��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '1', 'ת��֤ȯ����,�����з�û��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '2', 'ת��˫������,�����ݲ�һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ABORT_TYPE', '3', '�ʻ�˫��״̬��һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_ACCT', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_ACCT', '1', '��У��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_PWD', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_BANK_PWD', '1', '��У��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '0', '���ܲ���Ҫ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '1', '�ܲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '2', 'Ӫҵ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FLAG', '3', '�ܲ�����Ӫҵ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FUND_PWD', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_FUND_PWD', '1', '��У��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_GRP_FLAG', '0', '�Ƿ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_GRP_FLAG', '1', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '0', '��У��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '1', '��У�����֤ID�Ϳͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '2', 'ֻ��У�����֤ID', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_ID', '3', 'ֻ��У��ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_RESULT', '0', '��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_RESULT', '1', 'ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_RESULT', '3', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STAT', '1', '�Ǽǽ����ж�KBSS����û��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STAT', '2', '�Ǽǽ���û�ж�KBSS������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STAT', '3', '�Ǽǽ�����KBSS���㲻һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '2', '��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '3', '�ѳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '4', '�ѹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '5', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '6', 'ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '7', 'δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STATUS', '8', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STK_TYPE', 'A', '֤ȯ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STK_TYPE', 'B', '֤ȯ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_STK_TYPE', 'P', '֤ȯδ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TWO_STATUS', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TWO_STATUS', '1', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TWO_STATUS', '2', '�����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '0', '���踴��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '1', '��Աͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '2', '��Ա���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '3', '��λͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHK_TYPE', '4', '��λ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHNL_CLS', '0', '��̨ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHNL_CLS', '1', '�ֳ�����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CHNL_CLS', '2', '���ֳ�����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '0', '��Դ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '1', 'ԭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '2', '������Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '3', 'Ͷ��Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '4', '��������Ʒ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '5', 'ҽ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '6', '����������Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '7', 'ó�׺�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '8', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', '9', '��ͨ����Ͳִ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'A', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'B', '���ز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'C', '��Ϣ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'D', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'E', '�ۺ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_CORP_TYPE', 'Z', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '1', '50������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '2', '50-500��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '3', '500��3000��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '4', '3000-10000��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_COUNT', '5', '10000������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '1', '1000����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '2', '1000-2000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '3', '2000-5000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '4', '5000-10000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_EMPLOYLEE_SALARY', '5', '10000����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '0', '��Դ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '1', 'ԭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '2', '������Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '3', 'Ͷ��Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '4', '��������Ʒ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '5', 'ҽ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '6', '����������Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '7', 'ó�׺�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '8', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', '9', '��ͨ����Ͳִ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'A', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'B', '���ز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'C', '��Ϣ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'D', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'E', '�ۺ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE', 'Z', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '01', '��Դ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '02', 'ԭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '03', '������Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '04', 'Ͷ��Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '05', '��������Ʒ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '06', 'ҽ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '07', '����������Ʒ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '08', 'ó�׺�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '09', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '10', '��ͨ����Ͳִ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '11', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '12', '���ز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '13', '��Ϣ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '14', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '15', '�ۺ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_TRADE_ORG', '16', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '1', '����ҵ��λ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '2', 'ũ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '3', '���幤�̻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '4', 'ѧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '5', '֤ȯ��ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '6', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', '7', '��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'A', '�Ľ̿���רҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'B', '��������ҵ��λ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'C', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'D', '��Ʒ���ɻ�����������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'E', '�鱦���ƽ�ȹ������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'F', '��Ʊ�����֡��䵱��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIF_VOCATION', 'Z', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '1', '��һ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '2', '�ڶ���Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '3', '������Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '4', '���Ĵ�Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '5', '�����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '6', '������Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '7', '���ߴ�Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '8', '�ڰ˴�Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', '9', '�ھŴ�Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'A', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'F', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'J', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'N', '����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'Q', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CIRCU_TYPE', 'Z', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ABW', '��³��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AFG', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AGO', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AIA', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ALB', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AND', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ANT', '����������˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ARE', '����������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ARG', '����͢', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ARM', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ASM', '������Ħ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ATA', '�ϼ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ATF', '�����ϲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ATG', '����ϺͰͲ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AUS', '�Ĵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AUT', '�µ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'AZE', '�����ݽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BDI', '��¡��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BEL', '����ʱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BEN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BFA', '�����ɷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BGD', '�ϼ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BGR', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BHR', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BHS', '�͹���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BIH', '��˹���Ǻͺ�����ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BLR', '�׶���˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BLZ', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BMU', '��Ľ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BOL', '����ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BRA', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BRB', '�ͰͶ�˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BRN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BTN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BVT', '��ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'BWA', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CAF', '�з�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CAN', '���ô�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CCK', '�ƿ�˹(����)Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CHE', '��ʿ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CHL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CHN', '�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CIV', '���ص���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CMR', '����¡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CNI', '��ϿȺ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COD', '�չ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COG', '�չ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COK', '���Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COL', '���ױ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'COM', '��Ħ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CPV', '��ý�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CRI', '��˹�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CSR', 'ʥ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CTN', '�й�̨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CUB', '�Ű�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CYM', '����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CYP', '����·˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'CZE', '�ݿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DEU', '�¹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DJI', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DMA', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DNK', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DOM', '������ӹ��͹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'DZA', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ECU', '��϶��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'EGY', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ERI', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ESH', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ESP', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'EST', '��ɳ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ETH', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FIN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FJI', '쳼�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FLK', '���ά��˹Ⱥ��(������Ⱥ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FRA', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FRO', '����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'FSM', '�ܿ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GAB', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GBR', 'Ӣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GEO', '��³����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GHA', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GIB', 'ֱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GIN', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GLP', '�ϵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GMB', '�Ա���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GNB', '�����Ǳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GNQ', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GRC', 'ϣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GRD', '�����ɴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GRL', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GTM', 'Σ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUF', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUM', '�ص�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUS', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'GUY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HKG', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HMD', '�յµ���������ɵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HND', '�鶼��˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HRV', '���޵���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HTI', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'HUN', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IDN', 'ӡ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IND', 'ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'INE', '��ά˹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IOM', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IOT', 'Ӣ��ӡ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IRL', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IRN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'IRQ', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ISL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ISR', '��ɫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ITA', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JAM', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JOR', 'Լ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JPN', '�ձ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'JSY', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KAZ', '������˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KEN', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KGZ', '������˹˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KHM', '����կ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KIR', '�����˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KNA', 'ʥ���ĺ���ά˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KOR', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'KWT', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LAO', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LBN', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LBR', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LBY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LCA', 'ʥ¬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LIE', '��֧��ʿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LKA', '˹������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LSO', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LTU', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LUX', '¬ɭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'LVA', '����ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MAC', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MAN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MAR', 'Ħ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MCO', 'Ħ�ɸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MDA', 'Ħ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MDG', '����˹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MDV', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MEX', 'ī����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MHL', '���ܶ�Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MKD', '��˹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MLI', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MLT', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MMR', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MNG', '�ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MNP', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MOZ', 'Īɣ�ȿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MRT', 'ë��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MSR', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MTQ', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MUS', 'ë����˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MWI', '����ά', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MYS', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'MYT', '��Լ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NAM', '���ױ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NCL', '�¿��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NER', '���ն�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NFK', 'ŵ���˵�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NGA', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NIC', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NIU', 'Ŧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NLA', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NLD', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NOR', 'Ų��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NPL', '�Ჴ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NRU', '�³', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'NZL', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'OTH', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'OWN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PAK', '�ͻ�˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PAN', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PCN', 'Ƥ�ؿ���Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PER', '��³', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PHL', '���ɱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PLW', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PNG', '�Ͳ����¼�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'POL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRI', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRK', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRT', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PRY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PST', '����˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'PYF', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'QAT', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'REU', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ROM', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'RUS', '����˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'RWA', '¬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SAU', 'ɳ�ð�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SDN', '�յ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SEN', '���ڼӶ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SGP', '�¼���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SGS', '�������ǵ�����ɣ��Τ�浺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SHN', 'ʥ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SJM', '˹�߶���Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SLB', '������Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SLE', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SLV', '�����߶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SMR', 'ʥ����ŵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SOM', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SPM', 'ʥƤ�������ܿ�¡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'STp', 'ʥ��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SUR', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SVK', '˹�工��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SVN', '˹��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SWE', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SWZ', '˹��ʿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SYC', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'SYR', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TCA', '�ؿ�˹��˹Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TCD', 'է��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TGO', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'THA', '̩��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TJK', '������˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TKL', '�п���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TKM', '������˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TMP', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TON', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TTO', '�������Ͷ�͸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TUN', 'ͻ��˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TUR', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TUV', 'ͼ��¬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'TZA', '̹ɣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UGA', '�ڸɴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UKR', '�ڿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UMI', '����̫ƽ���Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'URY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'USA', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'UZB', '���ȱ��˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VAT', '��ٸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VCT', 'ʥ��ɭ�غ͸����ɶ�˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VEN', 'ί������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VGB', 'Ӣ��ά����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VIR', '����ά����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VNM', 'Խ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'VUT', '��Ŭ��ͼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'WLF', '����˹�͸�ͼ��Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'WSM', '����Ħ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'YEM', 'Ҳ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'YUG', '��˹����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZAF', '�Ϸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZAR', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZMB', '�ޱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP', 'ZWE', '��Ͳ�Τ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', '1', '·;ңԶ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'A', '������������ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'B', '��Ѷ����ʱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'C', '·;��Զ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'D', '����̬�Ȳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'E', '�շѽϸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'F', 'Ӫҵ���㻷������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'G', '��֤ȯͶ��ʧȥ��Ȥ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'H', '�⹫˾����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLOSE_ACCT_CAUSE', 'I', '����ԭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLR_MEM_CLS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLR_MEM_CLS', '1', '�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CLR_MEM_CLS', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '0', '��ȫƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '1', 'ƥ�䲻һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '2', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '3', '��ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '4', 'δ������ú˶�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT', '5', 'ҵ��δ�ڷ��ú˶����ñ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '1', '�ɽ���һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '2', '�ɽ�������һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '3', 'ӡ��˰��һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '4', '�����Ѳ�һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '5', '����Ѳ�һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '6', '���ܷѲ�һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CMP_RESULT_CODE', '7', '���ַѲ�һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '0', '�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '1', '��������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '2', '��ͨ����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '3', '���ô���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '4', 'С�������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_ATTR', '5', '�Ǻϸ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '0', '�ʲ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '1', '��ծ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '2', 'Ȩ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COACCT_TYPE', '3', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '0', '���Ƚ�֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '1', '(�ɽ���¼)֤ȯ����1��(ί��)֤ȯ����Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '2', '(�ɽ���¼)֤ȯ����1���ɴ�����(ί��)֤ȯ�������ɴ���Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '3', '(�ɽ���¼)֤ȯ����1��(ί��)֤ȯ�������ɴ���Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '4', '(�ɽ���¼)֤ȯ����1���ɴ�����(ί��)֤ȯ����Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '5', '(�ɽ���¼)֤ȯ����2��(ί��)֤ȯ����Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '6', '(�ɽ���¼)֤ȯ����2��(ί��)��������Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '7', '(�ɽ���¼)֤ȯ����1��(ί��)��������Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CODE_MATCH_METHOD', '8', '(�ɽ���¼)֤ȯ������(ί��)֤ȯ����ȽϺ���λ�Ƚ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_FLAG', '0', '�Ǳز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_FLAG', '1', '�ز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_STATUS', '0', '���ɼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COLL_STATUS', '1', '�Ѳɼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'ASS_TOTAL', '��֤ͨȯ�˻����ʲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'BREAK_CONTRACT', '�Ƿ����ΥԼ��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'CUACCT_OPEN_DATE', '��ͨ����ʱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'CUST_LASTRISK_REASON', '��ͷ��յȼ�ԭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'EXPECT_INCOME', 'Ԥ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'INVEST_LMT', 'Ͷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'INVEST_PRO', 'Ͷ��Ʒ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'IS_FISL', '�Ƿ���¹�������ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_AGE', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_EDUCATION', 'ѧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_OCCU', 'ְҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SURVEY_VOCATION', 'ְҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_ASSETTOTAL', '�ʲ�(ϵͳ����֮��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_NETASSET', '���ʲ���ģ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_REVENUE', '��Ӫҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COL_NAME', 'SUR_SECTOTAL', '֤ȯ�˻��ʲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMMISION_FLAG', '0', '��Ӷ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMMISION_FLAG', '1', 'Ӷ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMMISION_FLAG', '2', '��Ӷ����ÿ۳�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '0', '��ʱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '1', '���ʳɽ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '2', 'ȫ�ճɽ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '3', '�ۼƳɽ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '4', '�۽��ɽ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '5', '�ʲ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '6', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '7', '���Ӷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '8', 'Ӷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COMPLC_TYPE', '9', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COM_CATEGORY', '0', '�ǻع���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COM_CATEGORY', '1', '�ع���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '000', ' Ͷ�˲�Ʒ0', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '001', ' Ͷ�˲�Ʒ1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '002', ' Ͷ�˲�Ʒ2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '003', ' Ͷ�˲�Ʒ3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '004', ' Ͷ�˲�Ʒ4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '005', ' Ͷ�˲�Ʒ5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '010', ' ���Ͽ���ҵ��Լ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '020', ' ���ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '021', ' �ʵ���ƥ��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '022', ' �ʵ��Բ�ƥ��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '030', ' �ͻ���֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '040', ' �Ϻ�֤ȯ����������Ͷ������Ϊָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '050', ' ֤ȯ����ί�д���Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '060', ' ��������֤������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '070', ' ����֤��ҵ�������ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '080', '�ͻ�����ȷ���鼰������ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '090', 'ί�й�ϵȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '100', ' �������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '101', '��ҵ�����������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '102', 'ũҵ�����������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '103', '���������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '104', '��ͨ�����������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '105', '���������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '106', '���������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '107', '�й������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '108', '���������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '109', '���������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10a', '���������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10b', '��������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10c', 'ƽ�������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10d', '�㷢�����������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10f', '�ַ������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '10g', '�Ϻ������������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '201', 'OTC����Լ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '202', 'OTC���Ӻ�ͬ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '203', '���Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '300', '�ͻ��˻�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '302', '�ͻ���֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '303', 'ָ������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '304', '����Ȩ֤���ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '305', '�Ϻ�֤ȯ���������վ�ʾ��Ʊ���׷��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '306', '����������������ڹ�Ʊ���׷��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '307', '�Ϻ�����������Ͷ������Ϊָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '308', '֤ȯ����ί�д���Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '309', '֤ȯͶ�ʻ���Ͷ����Ȩ����֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '30a', '֤ȯ����ί�з��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '30b', '����ʽ����绰ί�С����Ͻ���ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '401', '���״�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_CLS', '701', '��Ʊ��Ȩ�Զ���ȨЭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '1', '��ǩԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '3', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '6', '������ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', '9', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_STATUS', 'M', '�ֹ�¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '00', 'Ͷ�˲�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '01', '���Ͽ���ҵ��Լ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '02', '���ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '03', '�ͻ���֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '04', '�Ϻ�֤ȯ����������Ͷ������Ϊָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '05', '֤ȯ����ί�д���Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '06', '��������֤������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '07', '����֤�������ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '08', '�ͻ�����ȷ���鼰������ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '09', 'ί�й�ϵȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '10', '�������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '20', 'OTC��Ʒ����Э��ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '30', '���Ͽ�������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '40', '���״�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CONTRACT_TYPE', '70', '��Ʊ��ȨЭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_CLS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_CLS', '1', '�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_CLS', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '01', '������ҵ���й�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '02', '������ҵ�����й�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '03', '�ǹ�����ҵ���й�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '04', '�ǹ�����ҵ�����й�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '10', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '11', '����֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '12', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '13', '����һ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '21', '��ͨ�ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '22', '������ͨ�ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '23', '���޺ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '24', '�Ƿ��˴�Ͷ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_EXTYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_TYPE', '0', '֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_TYPE', '1', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CORP_TYPE', '2', '�ڻ���˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COUPON_OFFER', '0', '�ֽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'COUPON_OFFER', '1', '��ǰ�˽�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDE_SCAN', 'N', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDE_SCAN', 'Y', '�豨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '1', '��ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '2', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '3', '׷��ƽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '4', '�峥ƽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '5', '��ֹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_ACCT_STATUS', '6', '׼�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_LVL', '0', 'һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_LVL', '1', '�е�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_LVL', '2', '�߼�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CREDIT_TYPE', '1', '�̶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', '0', '�淶�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', '1', '���淶�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', '2', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'a', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'b', '�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'c', 'Ԥָ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'd', 'δǩԼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'e', 'С�������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'f', '���ʽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'g', '���ϸ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'h', '���ϲ���ȫ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'i', '˾�����ủ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'j', '����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'k', '��С�ǹɷ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'l', '�ع��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'm', 'Ȩ֤�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'n', '��ʧ/����˻� ����/�ⶳ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'o', '�ͻ���ʧ�����������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'p', '����ϴǮ/�ֲ������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CRITERION', 'q', '�����������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '00', '״̬�����ϱ�TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '01', '״̬��ֹ���ϱ�TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '10', '״̬�������ϱ�TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CTRL_ATTR', '11', '״̬��ֹ�����ϱ�TA', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '0', '��ͨ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '1', '�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '2', 'OTC֧���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '3', '��Ʊ��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_ATTR', '4', 'OTC��������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '0', '�ͻ�2.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '0', 'ɢ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '1', '�л�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '1', '�ͻ�1.98��1.8��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '2', '�ͻ�2.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '2', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '3', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '3', '�ͻ�2.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '4', '�ͻ�2.3', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '5', '�ͻ�2.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '6', '�ͻ�2.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '7', '�ͻ�1.98', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '8', '�ͻ�2.8��xzj��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', '9', '���Ͽͻ�����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'a', '�ͻ�2.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'b', '�ͻ�1.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'c', '�������ֲ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'd', '�ͻ�1.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'e', '�ͻ�1.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'f', '�ͻ�1.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'g', '�ͻ�1.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'h', '�ͻ�0.9', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'i', '�ͻ�0.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'j', '�ͻ�0.7', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'k', '�ͻ�0.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'l', '�ͻ�0.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'm', '�ͻ�0.4', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'n', '�ͻ�3.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'o', '����ʽ������˻�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'p', '����ʽ���������', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'q', '���ϲ��淶��2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'r', '���ϲ��淶��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 's', '���������߻�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 't', '�����淶��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'u', '�����ݻ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'v', '��ݲ���Ӧ��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'w', '���߻�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'x', '���߶��ủ', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS', 'y', '������ܻ�����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS_FEE_SN', '0', '1111', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_CLS_FEE_SN', '1', '���ֳ�����1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_DMF', '0', '�Ǵ���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_DMF', '1', '����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '0', '��ͨ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '1', '���ý����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '2', 'OTC�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '3', '��Ʊ��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '5', '�ʽ�ϵͳ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_EXT_ATTR', '6', '����֧���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_FLAG_ID', '4', '��e���-��E��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_FLAG_ID', '5', '��e���-��Eʤ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_GRP', '0', '��ͨ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_GRP', '0', '��ͨ�ʻ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_GRP', '1', '����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '*', '123', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '0', 'ɢ������', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '0', '��ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_LVL', '2', 'af', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '2', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '0', '���ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '1', '���ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '2', '�����ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '3', '��Ʊ��Ȩ�ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '4', 'OTC�Ǵ���ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '5', 'OTC����ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUACCT_USES', '6', 'OTC����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_CHK_MODE', '0', 'BKPS-BANK����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_CHK_MODE', '1', 'TRDS-BANK����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_STATUS', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_STATUS', '2', '��ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '01', '���з���,����ת֤ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '02', '���з���,֤ȯת����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '03', '���з���,���ʻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '04', '���з���,������ת֤ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '05', '���з���,��֤ȯת����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '06', '���з���,��֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '07', '���з���,Ԥָ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '08', '���з���,���ǩԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '09', '���з���,��֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0A', '���з���,�ط�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0B', '���з���,�ͻ�����ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0C', '���з���,�����֤�ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0D', '���з���,ԤԼ�����Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0E', '���з���,�������Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '0F', '���з���,ԤԼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '11', 'ȯ�̷���,����ת֤ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '12', 'ȯ�̷���,֤ȯת����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '13', 'ȯ�̷���,���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '14', 'ȯ�̷���,������ת֤ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '15', 'ȯ�̷���,��֤ȯת����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '16', 'ȯ�̷���,��֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '17', 'ȯ�̷���,Ԥָ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '18', 'ȯ�̷���,���ǩԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '19', 'ȯ�̷���,��֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1A', 'ȯ�̷���,�ط�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1B', 'ȯ�̷���,�ͻ�����ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1C', 'ȯ�̷���,ͬ����Ϣ�鱾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1D', 'ȯ�̷���,ԤԼȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1E', 'ȯ�̷���,ԤԼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1F', 'ȯ�̷���,������ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1G', 'ȯ�̷���,������ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_ID', '1H', 'ȯ�̷���,�������֪ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '0', 'δ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '1', '�ѱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '2', '�ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '3', 'ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '4', '��ʱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '5', '��Ϊ�ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TRD_STATUS', '6', '��Ϊʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TYPE', '0', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TYPE', '1', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUBSB_TYPE', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURRENCY', '0', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURRENCY', '1', '�۱�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURRENCY', '2', '��Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_CODE', '0', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_CODE', '1', '�۱�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_CODE', '2', '��Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_ID', 'HKD', '��Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_ID', 'RMB', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CURR_ID', 'USD', '��Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '00', '�����¹��깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '01', '�����¹�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '02', '������ɽɿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '05', '�ͻ�����ת��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '06', '�ͻ��˻��ϲ�Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '07', 'ί�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '09', 'Ȩ֤����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0A', '��ҵ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0B', '�ʽ��ʺ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0F', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0G', '��Ʊ��Ȩ�Զ���ȨЭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0K', '��ͨ����Ӷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0L', '��ͨ���ۻع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0M', '��ͨ�羳���г�ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0N', '��ͨЭ����ڽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0O', 'ծȯרҵͶ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0P', '��ͨ���ȹ�ת�ý���Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0S', '��С��ҵ˽ļծȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0V', '��Ѻ�ع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0Y', '��ͨԼ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0b', '�ͻ�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0c', '���ƹ�˾��Ʊ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0d', '7 X 24Сʱ�������ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0e', '�Ϻ����վ�ʾЭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0f', '������ȨЭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0g', '��ͨ��֤LOF����ҵ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0h', '7 X 24Сʱ�������ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0i', '���ƹ�˾��Ʊ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0j', '��ͨ���ƹ�˾��Ʊ����ת��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0k', 'ծȯ��Ѻ��ȯЭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0l', '�۹�ͨЭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0m', '��Ʊ��Ѻ�ع����뽻��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0n', '��Ʊ��Ѻ�ع��ڳ�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0o', '���վ�ʾծȯ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0p', '��ͣ����ծȯ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0q', '���״�����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0r', '�ʹܲ�Ʒ�ݶ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0s', '�ƽ�ETFЭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0t', '�Ϻ��������ۻع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0u', '��ծԤ���н���Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0v', '����Ͷ���߽���Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0w', '��Ʊ��ȨЭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0y', '�������й�Ʊ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '0z', '��������ܵ��ͻ�������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '11', 'ծȯ�ϸ�Ͷ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '14', '֤ȯ����ǩ��Լ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '15', '���ڻ���ä��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '17', 'ծȯЭ��ع��ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '18', 'ծȯЭ��ع��ʽ��ڳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '19', '�ǹ����ɺϸ�Ͷ����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '20', 'ETF����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '21', '��ת���ȹɽ���Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '22', 'һ����¼Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '25', '�ʲ�֧��֤ȯ�ϸ�Ͷ����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '26', '�ּ�����ϸ�Ͷ����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '28', '���ʻع�Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '30', '���ۻع�����ί��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '31', '�ֽ��Ʒ����ȡ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', '32', '��Ʊ��Ѻ�м���ҵ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'AB', 'A/B�ɿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'AC', '���ÿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'X2', 'ֽ��ǩ�����ǩ��Լ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_AGMT_TYPE', 'Y1', 'Ͷ�����ʵ���ƥ�估���ʵ��Ծ�ʾȷ���飨���ڲ�Ʒ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '1', '����--����ʽ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '2', '������--����--���ʽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '3', '������--����--���������߻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '4', '������--����--���߻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '5', '������--����--���߶��ủ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '6', '������--���ϸ�--���ϲ��淶��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '7', '������--���ϸ�--�����淶��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '8', '������--���ϸ�--�����ݻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', '9', '������--���ϸ�--��ݲ��Ի�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', 'a', '��˾��Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_CLS', 'b', '������--��Ʊ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '0', '��ͨ�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '1', '���ý��׿ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '2', 'OTC�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '3', '��Ʊ��Ȩ�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_EXT_ATTR', '5', '�ʽ�ϵͳ�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG', 'b', '�¿����ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '1', 'ս�Ի����ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '2', '����ͨע�ủ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '3', '��Ч��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', '7', '��Ʊ��Ȩ�ͻ������ʾ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'C', '�����²�����ʶ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'T', 'Ͷ��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'Z', 'רҵ����Ͷ���߱�ʶ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'b', '�طü����ʾ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'c', '��Ʒ�˻���ʾ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'd', '������ȯ�Զ����ű�־', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'm', '������ȯ�����״��ʼ��ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'n', '������ȯ�¿��ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_FLAG_ID', 'o', '������ȯ����ǰ�ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '*', 'δ����ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '0', '����1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_GRP', '2', '��˾��Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '0', '��Ҫ���ϼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '1', '��ϵ���ϼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '2', 'ְҵ���ϼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '3', '��˾���ϼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '4', '���ղ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '5', '֤����Ч�ڼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '6', '��������Ϣ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '7', '��ҵ�����ϼ��(2����δ�����ղ���)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '8', '֤ȯ�г����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', '9', '��18λ���֤���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'a', '���·��ղ���������(δ��/����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'b', '�ֻ��ż��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'c', '���ż�¼���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'd', '�ʵ������ϼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'e', 'ʵ�ʿ��������ϼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'f', 'ʵ�����������ϼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'g', '�ͻ���ͷ��ձ�ʶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_INFO_CHK_OPTN', 'h', '��ҵ����ϵ�˼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '0', '����ȫ������Ϊ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '1', '�޹̶�������Դ��������ڵ����������ϱ�׼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '2', '��֤ȯ�ڻ�Ͷ��֪ʶ��Ͷ�ʾ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '3', '�޷������̶Ȼ��ܳ����κ���ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_LASTRISK_REASON', '4', '֤��ᡢЭ�ᡢ֤ȯ��Ӫ�����϶����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_SOURCE', '0', '�����ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_SOURCE', '1', '���ܿͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_SOURCE', '2', '�����̳�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '2', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '1', '��Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '2', '�ʹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_TYPE', '3', 'QFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_USER_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_USER_TYPE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CUST_USER_TYPE', '2', '�豸', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '0', '��ѭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '1', '��ѭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '2', '������ѭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CYCLE_FLAG', '3', 'ҵ����ѭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '101', '�ֻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '102', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '103', '���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '104', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '105', '��ϵ��ַ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_CHECK_FLAG', '106', '��ϵ��ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_IS_DIRTY', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_IS_DIRTY', '1', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SET_TYPE', '0', '��ǰ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SET_TYPE', '1', '��ʷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SOURCE', '0', '�Զ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_SOURCE', '9', '�ֹ�ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '1', '���շ��ü�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '2', '���ڻع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '3', '�ʽ�ɷݴ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '4', '�ʽ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '5', '�ɷݴ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATA_STATUS', '9', '���ս���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_FLAG', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_FLAG', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DATE_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DAYS_OF_YEAR', '0', '360��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DAYS_OF_YEAR', '1', '365/366��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEAL_STATUS', '0', '��ȡ�ɹ�(ȫ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEAL_STATUS', '1', '��ȡ�ɹ�(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEAL_STATUS', '2', 'δ��ȡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_BEAR_WAY', '1', '�������λ�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_BEAR_WAY', '2', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_BEAR_WAY', '3', '������ͨ�ϻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_REPAY_MODE', '0', '��֤���Զ��黹���ʸ�ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_REPAY_MODE', '1', '��֤���Զ��黹���ʸ�ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DEBT_REPAY_MODE', '9', 'ȡ�ܲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '01', '�ɷݵǼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '40', '�ɷ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7A', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7B', '����ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7C', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7D', '�ֺ򶳽�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7E', '�ֺ򶳽���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '7F', '����ɷݿ������Ƶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', '8C', '�¹��Ϲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'P2', '��Ȩ�˻�ע���걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'P3', '��Ȩ�˻�ע���걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'Q3', 'ȫ��֤ȯ�˻�ʹ����Ϣ��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'Q4', 'ȫ��֤ȯ�˻�ע�����ϲ�ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'R1', '����֤ȯ�ύ�뷵��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'R2', '��ȯȯԴ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'R3', '��ȯ��ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'S1', 'B ��һ��ָ���޸�ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'S2', 'B �ɶ���ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'X2', '�����˻����˹ɷݲ��Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'ZC', 'ծȯ���г�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'ZG', '֤ȯת�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_CLS', 'ZT', 'ת�йܳ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '01', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '02', '���ֽⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '03', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '04', '�ֺ򶳽�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '05', '�ֺ򲿷ֽⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '06', '�ֺ������޸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '07', 'ȫ���ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '08', '�ֺ�ȫ���ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '09', '����������֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '10', '����������֤ȯ���ֽⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '11', '����Ϊ������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '12', '����Ϊ��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DECLARE_TYPE', '13', '��������������֤ȯ���������걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DELAY_SETT_FLAG', '0', '�������ӳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DELAY_SETT_FLAG', '1', '�����ӳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DISC_TYPE', '0', '��Ӷ���ۿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DISC_TYPE', '1', 'ȫ��Ӷ���ۿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIVIDEND_FLAG', '0', '����������Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIVIDEND_FLAG', '1', '��������Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIV_METHOD', '0', '����תͶ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIV_METHOD', '1', '�ֽ�ֺ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIY_FRT_BIZ', '0m', '������ȯӰ��ɼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIY_FRT_BIZ', '0n', '�ʽ��˻�����ҵ��ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DIY_FRT_BIZ', '1C', '���ż������Ŷ�ȵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DOCU_TYPE', '00', '�ʲ�֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DOCU_TYPE', '01', '�ƾ���רҵ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DOCU_TYPE', '02', '���׾���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DR_CR_FLAG', '0', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'DR_CR_FLAG', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '0', '��ʿ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '1', '˶ʿ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '3', '��ר', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '4', '��ר', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '5', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', '6', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EDUCATION', 'Z', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EFFECT_STATUS', '0', '��Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EFFECT_STATUS', '1', '��ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '1', '50������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '2', '50-500��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '3', '500��3000��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '4', '3000-10000��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_AMOUNT', '5', '10000������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '1', '1000����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '2', '1000-2000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '3', '2000-5000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '4', '5000-10000', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EMP_SALARY_LVL', '5', '10000����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '0', '���Ź�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '1', '���ܣ���˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '2', '�ֹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '3', '�عɹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ENTERPRISE_LEVEL', '4', '�ӹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '1', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '2', '֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '3', '���ÿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '4', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '5', '�Ʋ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '6', '����Ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EN_PRODUCT_CODE', '7', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'DF', '�Ҹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'DX', '��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'HL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'P', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'S', '�͹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EQUITY_CLS', 'Z', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '0', '�����г��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '1', '�깺��ش���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '2', '�ֽ𻮲�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '3', '�����Ϲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CODE_TYPE', '4', '�Ϲ��ʽ𶳽����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '0', '�������깺���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '1', '�����깺���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '2', '�����깺�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_CR_FLAG', '3', '������أ��������깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_INSTEAD_FLAG', '0', '��ֹ�ֽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_INSTEAD_FLAG', '1', '�����ֽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_INSTEAD_FLAG', '2', '�����ֽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_PUBLISH', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETF_PUBLISH', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'HG', '���Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'HL', '����Ȩ��������ѡ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'RG', '�걨��ȷ�ϵĹ�/���Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'SG', '�չ�Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ETTLM_TYPE', 'XG', '�걨ѡ�������ȷ�ϵĺ���Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EUSER_TYPE', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EUSER_TYPE', '1', 'ΥԼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EUSER_TYPE', '2', 'С���Ʊ��Ѻ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '1', '1��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '2', '2��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '3', '3��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '4', '4��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_LEVEL', '5', '5��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'a', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'b', '�ͻ��ܾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'c', '��ҵ���ظ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EVA_NOREASON', 'd', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '1', '��3�������������볬��50w(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '2', '�������ʲ�����1000w', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '3', '���˽����ʲ�����300W(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXAMINE_TYPE', '4', '��У��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXEC_RESULT', '0', '��ִ�гɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXEC_RESULT', '1', 'ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXEC_RESULT', '2', 'δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXE_ORG_CLS', 'A', '��Ժ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXE_ORG_CLS', 'B', '֤���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXE_ORG_CLS', 'C', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '0', '10%����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '1', '10%-30%', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '2', '30%-50%', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPECT_INCOME', '3', '50%����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '0', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '2', 'Ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '3', '�ƾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXPERIENCE', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '1', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '2', '���㵥ȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '3', 'ָ���µ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXTER_TYPE', '4', '�ʽ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '0', '��ϵ��ַ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '1', '�ֻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '2', '�̶��绰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '3', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'EXT_LINK_TYPE', '@', 'ȫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_FLAG', '0', '���ʼ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_FLAG', '1', '�ֱʼ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '0', '���˷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '1', '�����˷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '2', '��������ֵ�˷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '3', '�����˷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '4', 'ֱ��ȡ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_CAL_METHOD', '5', '��Լ����㷽��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_SUB_FLAG', '0', '���ֶμƷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FEE_SUB_FLAG', '1', '�ֶμƷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FILINGCABINET_NO ', '*', '��δ����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FILINGCABINET_NO ', '0', 'Ĭ�ϱ��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '0', '��ͨԱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_CUST_CLS', '3', '�߹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '0', '֤ȯ��ҵ�ʸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '1', '�ڻ���ҵ�ʸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '2', 'ע����ʦ֤��(CPA)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FIN_QUAL_CERT', '3', 'ע����ڷ���ʦ(CFA)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_ATTR_CODE', '1', '��ѵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_ATTR_CODE', '2', '��ѵʱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_ATTR_CODE', '4', '���ڿͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_CLS', '0', 'ɢ��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_CLS', '1', '����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_CLS', 'z', 'ɢ��12', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_GRP', '3', '��Ʒ�ʻ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_GRP', '4', '����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_LVL', '1', 'ɢ������', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUACCT_LVL', '2', '����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '1', '��ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '2', 'רҵ����(���ڲ�Ʒ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_CUST_TYPE', '3', '�����ڲ�Ʒ���רҵ����Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '04', '�����˻������ͻ��ʲ���Сֵ(��λ��Ԫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '10', '�ͻ�������ȯ���ղ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '11', '�ͻ�������ȯ֪ʶ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '23', '������ȯ���ŷ��ղ�����ʾ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '24', '�ͻ�������ȯ֪ʶ������ʾ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '30', '�ͻ����ʲ����ޱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '31', '�ͻ��������ʲ����ޱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '32', '���ͻ��������ʶ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '33', '���ͻ�������ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '34', '���ͻ������ܶ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '35', 'ȫ��ͻ����ʶ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '36', 'ȫ��ͻ���ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '37', 'ȫ��ͻ��ܶ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '38', '��Χ�������ʶ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '39', '��Χ������ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '90', '������ϵ���Ƿ���������ֻ���(1-�ǣ�0-��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '91', 'һվʽ�����Ƿ���ʾ��������(1-��ʾ��0-����ʾ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FISL_PARAM_CONFIG_SET', '92', '�������Ĭ��ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FI_CON_TYPE', '1', '�ȵ��ȵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FI_CON_TYPE', '2', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '2', '���׵�Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_FLAG', '3', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '0', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '1', 'ȫ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '2', 'ǰ׺���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLD_PROC', '3', '�ȽϽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'A', '���Ż�������¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'B', '������������¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'C', '�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'D', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'E', '�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'F', '�ʸ�����¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'G', '�ʸ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'H', '��ȷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FLOW_ID', 'I', '��ȷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FREEZE_TYPE', 'S', '���۶���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FREEZE_TYPE', 'U', '�����۶���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '*', 'ͨ��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '00', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '01', '���ϱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '02', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '03', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '04', '�ͻ�Ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '05', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '06', '�ɶ��ӹһ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '07', '�����˻��ӹһ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '08', '�ʲ���֤�ӹһ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '09', 'Ǩ�ƿͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0A', '�Զ���ɼ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0B', '�е��˻�Ӱ�񲹲�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0C', '���ʲ��˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0D', '���ô�ҵ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0E', '�޸Ĵ�ҵ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0F', 'ɾ����ҵ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0G', '��Ʊ��Ȩ��Լ�˻��ӹһ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0H', '�ͻ����֤������λ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0I', '���ö෽��ܿͻ�ҵ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0J', 'ծȯרҵͶ�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0K', '�����˿���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0L', '�˻����ϱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0M', '�ɶ��˻�Ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0N', 'һվʽ����(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0O', '����ծȯ���չܿ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0P', 'һվʽ����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0Q', '��Ʊ��Ѻʽ�ع��ʸ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0R', '�ͻ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0S', '��Ƶ��֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0T', '˫�˼�֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0U', '����Ա�˵�ִ��Ȩ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0V', '����Ա�˵���ȨȨ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0W', '��Ʊ��Ȩ���Ͽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0X', '��Ʊ��Ȩ��Լ�˻�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0Y', 'ҵ��Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0Z', '�����˻�Ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0a', '��Ʊ��Ȩһվʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0b', '�����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0c', '�����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0d', '����ҵ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0e', '�����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0f', '�ʸ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0g', '�ʸ������޸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0h', '���ֳ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0j', '���ֳ��ɶ��ӹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0k', '��������¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0l', 'OTC�ͻ����Ͽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0m', '������ȯӰ��ɼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0n', '�ʽ��˻�����ҵ��ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0o', 'һվʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0p', '����Ա��Ȩ��λ����_ִ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0q', '����Ա��Ȩ��λ����_��ȨȨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0r', '��λ�˵�ִ��Ȩ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0s', '��λ�˵���ȨȨ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0t', '�¿ͻ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0u', 'Ͷ���ʵ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0v', '�۹�ͨ����Ȩ�޿�ͨע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0w', '���ȹɺϸ�Ͷ�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0x', '����֧��ת��Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0y', '����֧�����Ͽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '0z', 'OTCһվʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '10', '�����˻�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '11', '��Ʊ��Ȩ�ʲ��˻�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '12', '��Ʊ��Ȩ�˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '13', '��Ʊ��Ȩ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '14', '��Ʊ��Ȩ�ʲ��˻��ӹһ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '15', '��С��ҵ˽ļծ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '16', 'ծȯ�ϸ�Ͷ�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '17', '�ɶ��˻�������ϵͳ�ڣ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '18', 'Э���ʵ��Է�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '19', '�ͻ�ǩ������Э������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1A', '���ùɶ��˻��ӹһ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1B', 'OTC����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1C', '���ż������Ŷ�ȵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1D', '˽ļ�ϸ�Ͷ�����ʸ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1E', 'רҵͶ�����ʸ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1F', '�����û��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1G', '�ͻ�˽ļ��Ʒ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1K', '˽ļ����Ͷ���߰���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', '1Q', '�ͻ�Ǩ��(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OC', '����OTC�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OD', '����OTC�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OJ', 'רҵͶ����ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OM', 'רҵͶ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OT', 'רҵͶ���߿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OU', '�ͻ�ϵͳ���ʲ���Ϣά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OV', '�ͻ�Ͷ�ʾ���ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OW', '���ս�ʾ��־����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ', 'OX', '�Ǿ�������˻���˰��Ϣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '0', '���ϵǼ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '2', '��ִ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '3', '��ɨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '4', '��ɨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '5', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '6', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '7', '����ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '8', '�쳣����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', '9', '����δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'A', 'dos�����쳣', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'B', '�쳣��ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'E', '��ݸ��˵Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'F', '��ݸ��˽׶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'G', '��ݸ���ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'H', 'Ӱ��һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'I', 'Ӱ���ϴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRT_BIZ_STATUS', 'J', 'Ӱ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRZ_TYPE', '1', '˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRZ_TYPE', '2', '��Ѻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FRZ_TYPE', '3', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '0', '���湦��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '1', '�ͻ���һ��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '2', '�ͻ���ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '3', '��˾��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '4', '��˾��һ��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNC_TYPE', '5', 'ͨ�ò���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '020', '20��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '030', '30��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '050', '50��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '100', '100��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUNDASSET_RANGE', '200', '200��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '1', 'ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '2', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '3', '��ش���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '4', '���ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '5', '��ӡ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_BIZ', '6', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '0', '��Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '1', '���㶳��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '2', '����ⶳ(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '3', '����ⶳ(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_DLVY_STATUS', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'F', '���仯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'M', '�ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'P', '�ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_FLOW', 'X', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '0', '��Ȼ��˽ļ�ϸ�Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '1', '����˵�˽ļ�ϸ�Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '2', '��Ȼ��רҵͶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '3', '����˵�רҵͶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_INVEST_TYPE', '4', '��ҵ��Ա˽ļ�ϸ�Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '0', '��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '1', '��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '2', '��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '3', '��ָֹ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '4', '��ֹ��̨֧ȡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '5', '��ֹ���ж˷�����֤ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '6', '��ֹ���ж˷�����֤ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '7', '��ֹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '8', '��ֹծȯת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', '9', '��ֹծȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'A', '��ֹȯ�̶˷�����֤ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'B', '��ֹȯ�̶˷�����֤ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'C', '��ֹ��ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'H', '���ع�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'K', '��ֹ�Զ�չ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'P', '��ֹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'Q', '��ֹ��ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'R', '��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'S', '��ֹ�깺�¹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'W', '��ֹ����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_LIMIT_RIGHT', 'Z', '��ֹת�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '0', '��ֹ�����˻��Լ����˻��븨�˻�֮�仮ת', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '1', 'ֻ����Ӹ��˻������˻�����ת', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '2', '�������˻��븨�˻�֮�以ת', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_TRANS_TYPE', '3', '�����˻��Լ����˻��븨�˻�֮�䶼���Ի�ת', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1000', '���㱸����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1001', '���ױ�֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1002', 'Ȩ֤��Լ��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '1003', '�۲֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2001', '�ɽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2002', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2003', '��Ӷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2004', 'ӡ��˰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2005', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2006', '������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2007', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2008', '���׹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2009', '���ַ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2010', '֤�ܷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2020', '���ջ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2021', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2022', 'ת�йܷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2023', 'ί�е���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2024', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2025', '�ɽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2026', '��ѯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2027', 'ǰ̨�շ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2030', '��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2031', '��Ϣ˰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2032', '͸֧��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2033', '��Լ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2034', 'Ȩ�油����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2100', '�Ϲ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2101', '�깺���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2102', '��ؽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2103', '�˲���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2104', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2105', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '2106', '���ռ�÷�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'FUND_USE', '9999', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '1', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '2', '�ʲ��˻���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '3', '�����˴���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GENERATE_TYPE', '4', '��ͻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GRANT_TYPE', '0', '��ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GRANT_TYPE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'GRANT_TYPE', '2', 'ȫ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_DLE_TYPE', 'HCX', '��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_DLE_TYPE', 'HSB', '�걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H01', '�۹�ͨ��Ʊ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H02', '�۹�ͨȨ֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H54', '�۹�ͨ��������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H55', '�۹�ͨ��������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H56', '�۹�ͨ���ɿ���ȡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H57', '�۹�ͨ������ȡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H58', '�۹�ͨ���ɿ��˿�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H59', '�۹�ͨ�����˿�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H60', '�۹�֤ͨȯ��Ϸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H62', '�۹�ͨͶƱ�걨ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H63', '�۹�ͨ��˾�չ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H64', '�۹�ͨ���������걨ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H65', '�۹�ͨ�����걨ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H66', '�۹�ͨ������Ʊѡ��Ȩ�걨ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H67', '�۹�ͨ������ֽ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HK_TYPE', 'H90', '�۹�ͨ�ֹ����������ʽ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '2', '������ҵ(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '3', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '4', '����ס��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'HOUSE_OWNER', '5', '��λס��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_AGENCY_ID', '00001B', 'Ħ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_AGENCY_ID', '1001S', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_AGENCY_ID', '81218', '����81218', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110101', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110102', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110103', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110104', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110105', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110106', '��̨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110107', 'ʯ��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110108', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110109', '��ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110111', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110112', 'ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110113', '˳����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110114', '��ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110115', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110116', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110117', 'ƽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110228', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156110229', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120101', '��ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120102', '�Ӷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120103', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120104', '�Ͽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120105', '�ӱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120106', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120107', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120108', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120109', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120110', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120111', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120112', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120113', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120114', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120115', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120221', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120223', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156120225', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130100', 'ʯ��ׯ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130200', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130300', '�ػʵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130500', '��̨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130700', '�żҿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130800', '�е���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156130900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156131000', '�ȷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156131100', '��ˮ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140100', '̫ԭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140200', '��ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140300', '��Ȫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140600', '˷����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140800', '�˳���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156140900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156141000', '�ٷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156141100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150100', '���ͺ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150200', '��ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150300', '�ں���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150400', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150500', 'ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150600', '������˹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150700', '���ױ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150800', '�����׶���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156150900', '�����첼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156152200', '�˰���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156152500', '���ֹ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156152900', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210300', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210400', '��˳��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210500', '��Ϫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210800', 'Ӫ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156210900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211100', '�̽���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156211400', '��«����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220300', '��ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220400', '��Դ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220500', 'ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220600', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220700', '��ԭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156220800', '�׳���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156222400', '�ӱ߳�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230100', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230200', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230400', '�׸���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230500', '˫Ѽɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230800', '��ľ˹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156230900', '��̨����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156231000', 'ĵ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156231100', '�ں���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156231200', '�绯��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156232700', '���˰������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310101', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310103', '¬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310104', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310105', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310106', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310107', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310108', 'բ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310109', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310110', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310112', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310113', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310114', '�ζ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310115', '�ֶ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310116', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310117', '�ɽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310118', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310119', '�ϻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310120', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156310230', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320100', '�Ͼ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320600', '��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320700', '���Ƹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156320900', '�γ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321100', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321200', '̩����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156321300', '��Ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330700', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156330900', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156331000', '̨����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156331100', '��ˮ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340100', '�Ϸ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340200', '�ߺ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340500', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340700', 'ͭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156340800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341000', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156341800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350500', 'Ȫ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350700', '��ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156350900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360100', '�ϲ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360200', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360300', 'Ƽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360400', '�Ž���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360600', 'ӥ̶��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156360900', '�˴���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156361000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156361100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370200', '�ൺ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370300', '�Ͳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370400', '��ׯ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370500', '��Ӫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370600', '��̨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370700', 'Ϋ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156370900', '̩����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371500', '�ĳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156371700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410100', '֣����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410400', 'ƽ��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410600', '�ױ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156410900', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411000', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411100', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411200', '����Ͽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411600', '�ܿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156411700', 'פ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420100', '�人��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420200', '��ʯ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420300', 'ʮ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420500', '�˲���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420600', '�差��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156420900', 'Т����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421100', '�Ƹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156421300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156422800', '��ʩ����������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429004', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429005', 'Ǳ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429006', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156429021', '��ũ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430100', '��ɳ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430300', '��̶��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430800', '�żҽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156430900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156431300', '¦����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156433100', '��������������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440200', '�ع���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440400', '�麣��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440500', '��ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440600', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440800', 'տ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156440900', 'ï����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441400', '÷����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441500', '��β��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441600', '��Դ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441800', '��Զ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156441900', '��ݸ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156442000', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156445100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156445200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156445300', '�Ƹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450600', '���Ǹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450800', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156450900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451000', '��ɫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451200', '�ӳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156451400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156460100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156460200', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469001', '��ָɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469002', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469003', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469005', '�Ĳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469006', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469007', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469025', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469026', '�Ͳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469027', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469028', '�ٸ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469030', '��ɳ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469031', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469033', '�ֶ�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469034', '��ˮ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469035', '��ͤ��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469036', '������������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469037', '��ɳȺ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469038', '��ɳȺ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156469039', '��ɳȺ���ĵ������亣��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500101', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500102', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500103', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500104', '��ɿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500105', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500106', 'ɳƺ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500107', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500108', '�ϰ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500109', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500110', '��ʢ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500111', '˫����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500112', '�山��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500113', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500114', 'ǭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500115', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500222', '�뽭��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500223', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500224', 'ͭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500225', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500226', '�ٲ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500227', '�ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500228', '��ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500229', '�ǿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500230', '�ᶼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500231', '�潭��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500232', '��¡��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500233', '�ҡ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500234', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500235', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500236', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500237', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500238', '��Ϫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500240', 'ʯ��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500241', '��ɽ����������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500242', '��������������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500243', '��ˮ����������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500381', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500382', '�ϴ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500383', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156500384', '�ϴ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510100', '�ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510300', '�Թ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510400', '��֦����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510800', '��Ԫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156510900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511000', '�ڽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511100', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511300', '�ϳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511400', 'üɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511500', '�˱���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511600', '�㰲��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511800', '�Ű���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156511900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156512000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156513200', '���Ӳ���Ǽ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156513300', '���β���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156513400', '��ɽ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520200', '����ˮ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156520400', '��˳��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522200', 'ͭ�ʵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522300', 'ǭ���ϲ���������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522400', '�Ͻڵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522600', 'ǭ�������嶱��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156522700', 'ǭ�ϲ���������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530400', '��Ϫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530500', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530600', '��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530800', '˼é��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156530900', '�ٲ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532300', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532500', '��ӹ���������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532600', '��ɽ׳������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532800', '��˫���ɴ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156532900', '�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156533100', '�º���徰����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156533300', 'ŭ��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156533400', '�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156540100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542100', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542200', 'ɽ�ϵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542300', '�տ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542400', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542500', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156542600', '��֥����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610200', 'ͭ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610500', 'μ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610600', '�Ӱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610700', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610800', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156610900', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156611000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620200', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620300', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620400', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620500', '��ˮ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620600', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620700', '��Ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620800', 'ƽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156620900', '��Ȫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156621000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156621100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156621200', '¤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156622900', '���Ļ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156623000', '���ϲ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156630100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632100', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632200', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632300', '���ϲ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632500', '���ϲ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632600', '�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632700', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156632800', '�����ɹ������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640100', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640200', 'ʯ��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640300', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640400', '��ԭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156640500', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156650100', '��³ľ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156650200', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652100', '��³������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652200', '���ܵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652300', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652700', '���������ɹ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652800', '���������ɹ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156652900', '�����յ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156653000', '�������տ¶�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156653100', '��ʲ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156653200', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156654000', '���������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156654200', '���ǵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156654300', '����̩����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659001', 'ʯ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659002', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659003', 'ͼľ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_CITY_NO', '156659004', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '01', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02', '��λ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201', '���ڻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020101', '֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010101', '֤ȯ��Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010102', '֤ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010103', '֤ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010104', '�������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010401', '���ʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010402', '����ʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010403', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010404', 'ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201010405', 'ծȯ���� �������ծȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020102', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010201', '���ʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010202', '����ʽ����(������ETF)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010203', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010204', 'ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010205', '����ר�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010206', 'ծȯ���� �������ծȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020103', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010301', '������Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010302', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020104', '�籣����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020105', '��ҵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020106', 'QFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020107', '���չ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010701', '�����ʲ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010702', '�������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070201', '���ʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070202', '����ʽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070203', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070204', 'ETF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0201070205', 'ծȯ���� �������ծȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020108', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010801', '���й�˾��һ���в�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02010802', '���й�˾�������в�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020109', 'RQFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020110', '˽ļ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011001', '˽ļ֤ȯͶ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011002', '˽ļ��ȨͶ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011003', '˽ļ��ҵͶ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011004', '˽ļ��Ʒ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '02011005', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '0202', 'һ�㷨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020201', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020202', 'Ͷ�ʡ���ѯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020203', '���ز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020204', '��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020205', 'ũҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020206', '��ҵó��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020207', '��Ԫ�����Ź�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_INVESTOR_TYPE', '020208', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '1', '�����ڻ���˾ֱ�Ӵ�����Ͷ����ģʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '2', '�������⾭�Ͳ�����ģʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '3', '�����н�����м����ģʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '4', '�����н����ί�д���ģʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_OPEN_MODE', '5', '��������Ǿ��Ͳ�����ģʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156110000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156120000', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156130000', '�ӱ�ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156140000', 'ɽ��ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156150000', '���ɹ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156210000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156220000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156230000', '������ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156310000', '�Ϻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156320000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156330000', '�㽭ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156340000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156350000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156360000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156370000', 'ɽ��ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156410000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156420000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156430000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156440000', '�㶫ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156450000', '����׳��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156460000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156500000', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156510000', '�Ĵ�ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156520000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156530000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156540000', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156610000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156620000', '����ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156630000', '�ຣʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156640000', '���Ļ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156650000', '�½�ά���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156710000', '̨��ʡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156810000', '����ر�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_PROV_NO', '156820000', '�����ر�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '110', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '120', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '130', '�ɷݺ�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '141', '������Ӫ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '142', '������Ӫ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '143', '�����뼯����Ӫ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '149', '������Ӫ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '151', '���ж�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '159', '�����������ι�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '160', '�ɷ����޹�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '171', '˽Ӫ������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '172', '˽Ӫ�ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '173', '˽Ӫ�������ι�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '174', '˽Ӫ�ɷ����޹�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '190', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '210', '���ʾ�Ӫ��ҵ���ۻ�ġ�̨�ʣ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '220', '������Ӫ��ҵ���ۻ�ġ�̨�ʣ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '230', '�ۡ��ġ�̨�̶��ʾ�Ӫ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '240', '�ۡ��ġ�̨��Ͷ�ʹɷ����޹�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '310', '������ʾ�Ӫ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '320', '���������Ӫ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '330', '������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '340', '����Ͷ�ʹɷ����޹�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '400', '����������֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '500', '���һ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '600', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '700', '��ҵ��λ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_UNIT_TYPE', '800', '������֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '001', '�ܲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '002', '֣��Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '003', '����Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '004', '�Ϻ�Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '005', '����Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '006', '����Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '007', '����Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '008', '���Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '009', '����Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '010', '����Ӫҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZJS_ORG', '011', '�ൺӪҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'A', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'B', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'C', '�滯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'D', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'E', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'F', '��֬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'G', '��ú', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'H', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IB_ZSS_BUS_SCOPE', 'I', 'ұ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_CHECK_FLAG', '0', 'δУ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_CHECK_FLAG', '1', 'У��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_CHECK_FLAG', '2', 'У�鲻ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_INPUT_FLAG', '1', ' �ֶ�¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_INPUT_FLAG', '2', ' ����¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_READ_FLAG', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_READ_FLAG', '1', '�Ѷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '*', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '1', '��һ�����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '2', '�ڶ������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IDCARD_TYPE', '3', '����֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '00', '���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '01', '���պ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '02', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '03', 'ʿ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '04', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '05', '���ڱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '09', '����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0a', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0b', '��۾���ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0c', '���ž���ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0d', '̨�����ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0e', '��������þ���֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0f', '��ᱣ�Ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0g', '��ְ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0h', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0i', '��۾������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '0j', '���ž������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '10', '����Ӫҵִ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '11', '���ŷ���ע��Ǽ�֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '12', '���ط��˳�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '13', '��ҵ���˳�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '14', '������Ч��ҵ�Ǽ�֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '15', '�侯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '16', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '17', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '18', '�����ල�ֺ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '19', '����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1A', '��֯��������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1B', '˰��Ǽ�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1C', '������Ч֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1K', 'ID_TYPE_1K', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1P', 'ͳһ������ô���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '1Z', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ID_TYPE', '2a', 'ע���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_ATTR', '0', '�û�Ӱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_ATTR', '1', '����Ӱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '000', '�е��ʼ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '010', '����/���˿ͻ�����ȷ�ϻ�ִ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '011', '���ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '012', '����ʽ���𿪻�ȷ�ϻ�ִ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '013', '������ܱ��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '014', '������ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '015', 'Ȩ֤ǩ��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '016', '�ӹһ�ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '017', '��ҵ��ǩ��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '018', '���忪��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '019', '������֤��ҳ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01a', '���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01b', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01c', '�ͻ��ʽ�����֧�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01d', '�ͻ��ʽ�ת��ת��ҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01e', '�۰�̨�ͻ���֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '01h', 'ծȯ�г�רҵͶ�����ʸ�ȷ�ϱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '020', '���֤��Ƭ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '021', '��ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '022', '�������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '023', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '024', '�ͻ������ʺŸ�ӡ����ǱӰ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '025', '�۰�̨����֤��̨��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '026', '����֤/��ᱣ��֤/����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '027', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '028', '���ڱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '029', 'ʿ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02a', '���֤���ļ���ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02b', '���ֳ�������Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02c', '���п���Ƭ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02d', '��۾������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02e', '���ž������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02f', '̨��������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02g', '��۾���ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02h', '���ž���ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02i', '̨�����ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02j', '��ʱס�޵Ǽ�֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02k', '��������þ���֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02m', '�ͻ�ǩ����Ƭ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '02p', '���ֳ���ɫ���֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '030', '������ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '031', '������ճ�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '032', '������ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '033', '���𿪻�Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '034', '�ɷ�ת��ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '035', '�ɷ�ת�÷�����ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '036', '�������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '037', '��֤ת��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '038', '����ʽ������ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '039', '֤ȯͶ�ʻ���Ͷ����Ȩ����֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03A', '����ҵ��ͨ״̬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03a', '�ֻ�����ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03b', '����ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03g', '���ͻ�������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03h', '����Ӷ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '03z', '����Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '040', '���˷���ǼǱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '041', '��������ǼǱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '042', '֤ȯͶ�ʷ��ճ������������ʾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '043', '�ͻ��ʲ��䶯�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '044', '�ͻ��ʲ��䶯ȷ�ϻ�ִ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '045', 'ָ������Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '046', 'Ȩ֤���ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '047', '��Ȼ��ע���ʻ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '048', '����֤ȯ�ʻ�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '049', '֤ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04a', '��ҵ���г�Ͷ�ʷ��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04b', 'ע��֤ȯ�ʻ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04c', 'ί�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04d', '�ͻ�����ת��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04e', '�ͻ��ʻ��ϲ�Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04f', 'ת�й�/��ָ��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04g', '��ʧ����֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04h', '�ϲ�֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04i', '��������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04j', 'ע������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04k', '֤ȯ�˻�ע�����ϲ�ѯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04l', '�ϻ���ҵ�ȷǷ�����֤֯ȯ�˻�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04m', '�ϻ���ҵ�ȷǷ�����֤֯ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04o', 'ծȯ�г�רҵͶ���߷��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04s', '����֤��ҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04y', '֤ȯҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '04z', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '050', 'Ӫҵִ�ո���/���ŷ���ע��Ǽ�֤/������ҵ���˳�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '051', '��֯��������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '052', '˰��Ǽ�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '053', '����������֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '054', '������������Ȩί����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '055', '���������ʺ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '056', '�������������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05a', 'Ԥ��ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05b', 'Ӫҵִ�ո�ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05c', '��֯��������֤��ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '05d', '˰��Ǽ�֤��ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '060', '��A�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '061', '��B�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '062', '��B�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '063', '���ڻ����ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '064', '����A���ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '065', '����B���ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '066', '��/���������ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '067', '��A�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '068', '�Ϻ������ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '069', '����֤ȯ�˻���(�Ϻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '06a', '����֤ȯ�˻���(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '070', '�������ٹ���Ƭ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '071', '�����˾������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '072', '�����˻���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '073', '�����˸۰�̨����֤��̨��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '074', '����������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '075', '��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '076', '��Ȩί����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '07a', '���������֤���ļ���ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '080', '��֤ͨȯ�˻�/�ʽ��˻�֤���ļ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '081', '����֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '082', '��ס֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '083', '����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '084', '���ڴ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '085', '���ڴ浥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '086', 'ƾ֤ʽ��ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '087', '���������ʲ�(��Ʋ�Ʒ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '088', '���з���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '089', '���Ҵ����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08A', '��Ȼ������֤ȯ�˻�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08B', '��������֤ȯ�˻�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08C', '��Ȼ������֤ȯ�˻���ѯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08D', '��������֤ȯ�˻���ѯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08E', '��Ȼ������֤ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08F', '��������֤ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08G', '��Ȼ�˹�ʧ��������֤ȯ�˻��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08H', '������ʧ��������֤ȯ�˻��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08I', '��Ȼ��ע������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08J', '����ע������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08K', '�����ʽ��˻����������(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08L', '�����ʽ��˻����������(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08M', '�����ʽ��˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08N', '�����ʽ��˻����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08a', '�����ʲ�(��������ȨͶ�ʵ�)֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08b', '�����˵���ż��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08c', '�������ڻ�����������(��)����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08d', '���г��������εĳ�ŵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08e', '���ϸ�Ĵ��(֤)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08f', '���������˵�������ǩ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08g', '����������ȯҵ�������ļ���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08h', '�칫��ַ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08i', '���Ȳ��񱨸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08j', '���跨������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '08z', '����������ȯ��Ҫ�ύ�Ĳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '090', 'ծȯ��Ѻʽ���ۻع��ͻ�Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '091', 'ծȯ��Ѻʽ���ۻع�ҵ����ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '092', 'ծȯ��Ѻʽ���ۻع�ҵ���ŵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '093', 'ծȯ��Ѻʽ���ۻع�ҵ��Ͷ���߲���ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '094', '���ۻع�ҵ��ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '095', '����ת���ر���ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '096', '�����໤�˳�ŵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '097', '����ǩ��Լ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '098', '����ʽ������ҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '099', '����Ͷ����ҵ��׼֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '09I', '�ּ�����Ͷ�ʷ��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '0X3', '���֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '0X4', '���֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '100', '�����˻�����ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '101', '���ֳ���ҵ��ǩ��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '102', '���ֳ���ҵ���г�Ͷ�ʷ��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '103', '���ֳ��������������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '104', '���ֳ���A�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '105', '���ֳ���B�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '106', '���ֳ���A�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '107', '���ֳ������˾������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '108', '���ֳ���ʱס�޵Ǽ�֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '109', '�����˻�����ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '111', '��Ʊ��Ȩҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '112', '��Ʊ��Ȩ����ҵ���ͬ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '113', '��Ʊ��Ȩ�ʲ�֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '114', '��Ʊ��Ȩ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12i', '�����ʸ�֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12j', '�����ر������ʾȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12k', '��˾�³�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12l', '��ͬ����ȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12m', '��ͬ����Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12n', '��ͬǩ��Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12o', '����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12p', '��̸��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12q', '������ȯ������ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12r', '������ȯҵ���ͬ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12s', '������ȯҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12t', 'Ͷ���߽���Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12u', '���ü�¼֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12v', 'ѧ��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12x', 'ֽ�ʲ����Ծ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '12y', 'ֽ�ʲ���Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14B', '�ͻ����ճ����������������֪��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14C', '�ʵ���ƥ�������Ͷ����ȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14D', '���ڲ�Ʒ�������վ�ʾ��Ͷ����ȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14E', '�ۺ�ҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14F', 'רҵͶ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14G', 'רҵͶ���߸�֪��ȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14H', 'רҵͶ����֪ʶ�����ʾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14I', 'Ͷ�ʾ�����ϸ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14J', '˽ļ�ϸ�Ͷ���߳�ŵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14K', '��ͨͶ����תרҵͶ���߷��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14L', 'רҵͶ����ת��ͨͶ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14M', 'Ͷ���߻�����Ϣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14N', '�߷��ղ�Ʒ���߷����ر���վ�ʾ�鼰�ͻ�Ͷ��ȷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_CLS', '14O', 'ҵ���ʸ���˱�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_DIY_SCAN_BIZ', '01', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_DIY_SCAN_BIZ', '02', '��Ҫ���ϱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_DIY_SCAN_BIZ', '03', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '0', 'BMP', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '1', 'JPG', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '2', 'GIF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_FMT', '3', 'TIF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '!', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '<', 'С��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '<=', 'С�ڵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '=', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '>', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', '>=', '���ڵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'B', '����(���ڵ���ǰֵ��С�ڵ��ں�ֵ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'I', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'N', '������(С��ǰֵ�����ں�ֵ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_PARA_COMP_TYPE', 'S', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_SOURCE', '0', '�ٹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_SOURCE', '1', '��Χ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '1', 'δ�ϴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '2', '�ϴ�δ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '3', '�޸�δ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '4', '�ϴ����ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '5', '�޸����ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '6', 'ɾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '7', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', '8', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', 'A', 'δ�ɼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_STATUS', 'B', '�Ѳɼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '00', '�ʼ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '01', 'ҵ��ȷ�ϱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '02', '���˿ͻ����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '03', '����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '04', 'ҵ�����뵥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '05', '���������֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '06', '֤ȯ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '07', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '08', '�����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '09', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '10', '���ֳ�Ӱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '11', '��Ʊ��ȨӰ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '12', '������ȯӰ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IMG_TYPE', '14', '�ʵ���Ӱ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '0', '0-1000Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '1', '1001-3000Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '2', '3001-5000Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '3', '5001-8000Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INCOME', '4', '8000Ԫ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '01', '�ۺ���֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '02', '������֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '03', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '04', '����Ͷ�ʹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '08', '�������˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '10', '���չ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_EXTYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'A', 'ũ���֡�������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'B', '�ɿ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'C', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'D', '������������ȼ����ˮ�����͹�Ӧҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'E', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'F', '����������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'G', '��ͨ���䡢�ִ�������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'H', 'ס�޺Ͳ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'I', '��Ϣ���䡢�������Ϣ��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'J', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'K', '���ز�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'L', '���޺��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'M', '��ѧ�о��ͼ�������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'N', 'ˮ���������͹�����ʩ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'O', '��������������������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'P', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'Q', '��������Ṥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'R', '�Ļ�������������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'S', '����������ᱣ�Ϻ������֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB', 'T', '������֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A01', 'ũҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A02', '��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A03', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A04', '��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'A05', 'ũ���֡����������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B06', 'ú̿���ɺ�ϴѡҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B07', 'ʯ�ͺ���Ȼ������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B08', '��ɫ�������ѡҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B09', '��ɫ�������ѡҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B10', '�ǽ������ѡҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B11', '���ɸ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'B12', '�����ɿ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C13', 'ũ��ʳƷ�ӹ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C14', 'ʳƷ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C15', '�ơ����Ϻ;��Ʋ�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C16', '�̲���Ʒҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C17', '��֯ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C18', '��֯��װ������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C19', 'Ƥ�ëƤ����ë������Ʒ����Ьҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C20', 'ľ�ļӹ���ľ�����١��ء�����Ʒҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C21', '�Ҿ�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C22', '��ֽ��ֽ��Ʒҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C23', 'ӡˢ�ͼ�¼ý�鸴��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C24', '�Ľ̡�������������������Ʒ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C25', 'ʯ�ͼӹ��������ͺ�ȼ�ϼӹ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C26', '��ѧԭ�Ϻͻ�ѧ��Ʒ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C27', 'ҽҩ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C28', '��ѧ��ά����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C29', '�𽺺�������Ʒҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C30', '�ǽ���������Ʒҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C31', '��ɫ����ұ����ѹ�Ӽӹ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C32', '��ɫ����ұ����ѹ�Ӽӹ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C33', '������Ʒҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C34', 'ͨ���豸����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C35', 'ר���豸����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C36', '��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C37', '��·�����������պ�������������豸����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C38', '������е����������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C39', '�������ͨ�ź����������豸����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C40', '�����Ǳ�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C41', '��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C42', '������Դ�ۺ�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'C43', '������Ʒ����е���豸����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'D44', '���������������͹�Ӧҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'D45', 'ȼ�������͹�Ӧҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'D46', 'ˮ�������͹�Ӧҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E47', '���ݽ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E48', '��ľ���̽���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E49', '������װҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'E50', '����װ�κ���������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'F51', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'F52', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G53', '��·����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G54', '��·����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G55', 'ˮ������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G56', '��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G57', '�ܵ�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G58', 'װж���˺��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G59', '�ִ�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'G60', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'H61', 'ס��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'H62', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'I63', '���š��㲥���Ӻ����Ǵ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'I64', '����������ط���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'I65', '�������Ϣ��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J66', '���ҽ��ڷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J67', '�ʱ��г�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J68', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'J69', '��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'K70', '���ز�ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'L71', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'L72', '�������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'M73', '�о������鷢չ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'M74', 'רҵ��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'M75', '�Ƽ��ƹ��Ӧ�÷���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'N76', 'ˮ������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'N77', '��̬�����ͻ�������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'N78', '������ʩ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'O79', '�������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'O80', '�����������Ӳ�Ʒ�����ò�Ʒ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'O81', '��������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'P82', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'Q83', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'Q84', '��Ṥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R85', '���źͳ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R86', '�㲥�����ӡ���Ӱ��Ӱ��¼������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R87', '�Ļ�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R88', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'R89', '����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S90', '�й�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S91', '���һ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S92', '������Э����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S93', '��ᱣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S94', 'Ⱥ�����塢��������������Ա��֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'S95', '����Ⱥ��������֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INDUS_GB_SUB', 'T96', '������֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_STATUS', '0', 'δ��֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_STATUS', '1', '��֪��ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_STATUS', '2', '��֪�Ѿܾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '1', '������Ч�ڼ������ڸ�֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '2', '������Ч���ѵ��ڸ�֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '3', '��������Զ����¸�֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '4', '����������ͨ����֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '5', '����������ʧ�ܸ�֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '6', '��ֹ�޸Ĳ��������֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '7', '���Ͽ������δͨ����֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '8', '���Ͽ������ͨ����֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', '9', '���ڿͻ���ʾ��֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', 'a', 'רҵͶ������Ч�ڼ������ڸ�֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFORM_TYPE', 'b', 'רҵͶ������Ч���ѵ��ڸ�֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_ID_STATUS', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_ID_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_TYPE', '1', '֪ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INFO_TYPE', '2', '��Ѷ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INOUTSIDE_IDENTITY', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INOUTSIDE_IDENTITY', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '10', '��Ʊ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '20', '����Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '30', '��Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '40', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '51', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '52', '����Ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '60', 'ȯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '71', 'һ��һ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '72', 'һ�Զ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '80', '���޺ϻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '90', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '91', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', '92', '���BTA���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', 'A0', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_CLS', 'B0', 'ծȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '1', '��Ʊ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '2', '����Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '3', '��Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '4', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '5', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '6', 'ȯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '7', '��ļ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '8', '���޺ϻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', '9', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', 'A', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INST_TYPE', 'B', 'ծȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_CLS', '0', '��Ŀ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_CLS', '1', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_TYPE', '0', '��ծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_TYPE', '1', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INT_RATE_TYPE', '2', '��ծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '1', '��Ȼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '2', '����Ȼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '5', '�������Ȼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_EXTYPE', '9', '����Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_TYPE', '0', '��ͨͶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_TYPE', '1', 'רҵͶ����A��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVESTOR_TYPE', '2', 'רҵͶ����B��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_LMT', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_LMT', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_LMT', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '01', '�̶�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '02', 'Ȩ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '03', '����Ʒ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '04', '���ӻ�߷�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'INVEST_PRO', '99', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IN_USE', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IN_USE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAW', 'F', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAW', 'T', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAWN', '0', '�޳���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'IS_WITHDRAWN', '1', '�г���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_CLS', '0', '���ж�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_CLS', '1', 'ȯ�̽�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_CLS', '2', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_FLOW', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_FLOW', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_FLOW', '2', '˫��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '2', 'δƥ�䵽ת������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_PROC', '3', '���ڶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '0', 'ʵʱ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '1', 'ʵʱ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '2', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '3', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_DATA_TYPE', '4', '�Ǽǹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_ALLPWDCHANGE_INFO', 'L3102119_ȡ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_BANKACCT_INFO', 'L3102117_ȡ��֤���Ϻ˶�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_OFUNDACCT_INFO', 'L3102118_ȡ�����˻��˶�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_OTC_ACCT_INFO', 'L6000384_OTC�Ǽ��˺����Ϻ˶�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_OTC_OFUNDACCT_INFO', 'L3202118_ȡOTC�����˻��˶�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_FROM_TRD_SYS', 'ITF_VIP_CUST_INFO', 'L3300326_��̨VIP�ͻ����Ϻ˶�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_OP_TYPE', '0', 'ɾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_OP_TYPE', '1', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '2', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_PROC_STATUS', '3', '����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '0', 'DBF', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '1', 'SQL', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '2', 'TXT', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ITF_TYPE', '3', 'TCPIP', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'JOB_ISOLATION_LEVE', '0', '�޸���Ҫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'JOB_ISOLATION_LEVE', '1', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '!=', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '<', 'С��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '<=', 'С�ڵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '==', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '>', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', '>=', '���ڵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'B', '����(���ڵ���ǰֵ��С�ں�ֵ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'I', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'S', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LBM_PARA_OP', 'T', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '01', '������ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '02', '���ʼ��۰�̨����ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '03', '���ڻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '04', '��ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '05', '���ŷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '06', '���ط���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '07', '���ⷨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '08', '�ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '09', '�Ƿ��˴�Ͷ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LEGAL_REP_EXTYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '00', '��������ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '01', 'IPO�����۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '02', '��Ȩ�������۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIMIT_SELL_STK', '05', 'IPOǰ���۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '1', '�ֻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '2', '�̶��绰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '3', '�����ʼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINGKINDS_ORDER', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKADDR_ORDER', '1', '��ͥ��ַ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKADDR_ORDER', '2', '��λ��ַ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKADDR_ORDER', '3', '��ϵ��ַ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '1', '�ֻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '2', '��ͥ�绰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '3', '�����绰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKTEL_ORDER', '4', 'С��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '1', 'ԭ�ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '2', 'ԭ��+��ɶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '3', 'ԭ��+���+��ɣ�Ȩ֤���Ϲ���ɷݣ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINK_DEPTH', '4', 'ԭ��+���+��Ϣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '0', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '1', '������1��3��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '2', '������1����1��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINTEL_PD', '3', '������1��1��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LISTED_ATTR', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LISTED_ATTR', '2', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIST_STATUS', 'N', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LIST_STATUS', 'Y', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '0', '�������깺���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '1', '�����깺���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '2', '�����깺�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOF_CR_FLAG', '3', '������أ��������깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOG_TYPE', '0', '������ˮ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOG_TYPE', '1', '�ͻ�������ˮ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LOG_TYPE', '2', '��˾������ˮ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LS_FLAG', '0', '��ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LS_FLAG', '1', '��ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAIL_TYPE', '1', '���ü���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAIL_TYPE', '2', '�ؿ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAJPBU_FLAG', '0', '�����׵�Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAJPBU_FLAG', '1', '�����׵�Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAND_FLAG', '0', '�Ǳ�Ҫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MAND_FLAG', '1', '��Ҫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '1', 'δ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '2', '�ѻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '3', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MARRY', '4', 'ɥż', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '0', 'ί��ƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '1', '����ƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '2', '�˻�ƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '3', '����ƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MATCH_METHOD', '9', '����ƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MENU_TYPE', '0', '�����˵�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MENU_TYPE', '1', '���ܲ˵�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MENU_TYPE', '2', '�˵��ָ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '0', '�޼�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '1', '�Է�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '2', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '3', '��ʱ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '4', '�嵵����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '5', 'ȫ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', '6', 'ת������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'A', '�Է�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'B', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'C', '��ʱ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'D', '�嵵����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'E', 'ȫ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MP_ORDERTYPE', 'F', 'ת������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '1', 'ҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '2', 'ϵͳ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'MSG_LEVEL', '3', '���ݿ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '00', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '01', '�ɹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '02', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '03', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '04', 'ά�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '05', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '06', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '07', '׳��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '08', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '09', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '10', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '11', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '12', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '13', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '14', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '15', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '16', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '17', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '18', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '19', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '20', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '21', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '22', '��ɽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '23', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '24', 'ˮ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '25', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '26', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '27', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '28', '�¶�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '29', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '30', '���Ӷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '31', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '32', 'Ǽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '33', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '34', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '35', 'ë����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '36', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '37', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '38', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '39', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '40', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '41', 'ŭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '42', '���ȱ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '43', '����˹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '44', '���¿���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '45', '�°���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '46', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '47', 'ԣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '48', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '49', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '50', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '51', '���״���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '52', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '53', '�Ű���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '54', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '55', '��ŵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONALITY', '56', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '1', '����Ժ����ί��Ͻ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '2', '�ط�����ί��Ͻ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '3', '����������ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NATIONAL_ATTR', '4', '�ǹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NET_SERVICE', '0', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NET_SERVICE', '1', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NEW_OR_EXIST', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'NEW_OR_EXIST', '1', '�¿�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '0', '�ʲ��ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '1', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '2', '�ʲ��ʻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '3', '�ʲ��ʻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '4', '�ʲ��ʻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '6', '�ʽ��ʻ����+����+������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '7', '�ʽ��ʻ����+�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '8', '�ʽ��ʻ����+������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', '9', '�ʽ��ʻ�����+������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OBJ_TYPE', 'A', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '01', '�Ľ̿���רҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '02', '��������ְ�������ݣ����ظɲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '03', '����ҵ��λ�ɲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '04', '��������ҵ��λ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '05', 'ũ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '06', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '07', '��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '08', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '09', 'ѧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '0A', '����ְҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '10', '֤ȯ��ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '11', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_EXTYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '0', '���һ��ء���Ⱥ��֯����ҵ����ҵ��λ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '1', 'רҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '2', '������Ա���й���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '3', '��ҵ������ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '4', 'ũ���֡������桢ˮ��ҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '5', '�����������豸������Ա���й���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '6', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB', '7', '��������������ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '001', '�й�����������ίԱ��͵ط�������֯������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '002', '���һ��ؼ���������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '003', '�������ɺ�������弰��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '004', '��ҵ��λ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '005', '��ҵ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '106', '��ѧ�о���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '107', '���̼�����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '108', 'ũҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '109', '�ɻ��ʹ���������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '110', '����רҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '111', '����ҵ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '112', '����ҵ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '113', '����רҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '114', '��ѧ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '115', '��ѧ����������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '116', '����������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '117', '���ų��桢�Ļ�������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '118', '�ڽ�ְҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '219', '�����칫��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '220', '��ȫ������������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '221', '�����͵���ҵ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '222', '����������Ա���й���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '323', '������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '324', '�ִ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '325', '����������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '326', '���ꡢ���μ��������ֳ���������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '327', '���������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '328', 'ҽ������������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '329', '������;������������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '330', '������ҵ������ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '431', '��ֲҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '432', '��ҵ������Ұ����ֲ�ﱣ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '433', '����ҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '434', '��ҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '435', 'ˮ����ʩ����������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '436', '����ũ���֡������桢ˮ��ҵ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '537', '���⼰���￪����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '538', '����ұ����������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '539', '������Ʒ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '540', '��е����ӹ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '541', '�����Ʒװ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '542', '��е�豸������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '543', '�����豸��װ�����С����޼�������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '544', '����Ԫ�������豸���졢װ�䡢���Լ�ά����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '545', '�𽺺�������Ʒ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '546', '��֯����֯��ӡȾ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '547', '�ü������Һ�Ƥ�ëƤ��Ʒ�ӹ�������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '548', '���͡�ʳƷ�����������ӹ������������ӹ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '549', '�̲ݼ�����Ʒ�ӹ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '550', 'ҩƷ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '551', 'ľ�ļӹ��������������ľ��Ʒ�������ƽ�����ֽ��ֽ��Ʒ�����ӹ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '552', '�������������ӹ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '553', '�������մɡ��´ɼ�����Ʒ�����ӹ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '554', '�㲥Ӱ����Ʒ���������ż����ﱣ����ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '555', 'ӡˢ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '556', '���ա�����Ʒ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '557', '�Ļ�������������Ʒ������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '558', '����ʩ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '559', '�����豸������Ա���й���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '560', '������⼰���ﴦ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '561', '���顢������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '562', '����������������������Ա���й���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '663', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OCCU_GB_SUB', '764', '��������������ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '3', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '6', '�����ҹ�ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '7', '�¿���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '8', '�ؼ����ϱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', '9', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'a', '�ڲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'b', '�����˻�����δȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'c', '�����˻�����δȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'd', '�˻������޸�δȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_STATUS', 'e', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '01', '���𿪻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '02', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '03', '�����޸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '04', '�˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '05', '�˻��ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '06', '�˻���ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '07', '�˻����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '08', '�˻�ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFACCT_TRD_ID', '09', '����ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OFSALE_FIRMID', '1', '��֤�ɷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPENED_DATES', '06', '6����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPENED_DATES', '12', '12����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPENED_DATES', '24', '24����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '0', '֤ȯAB��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '1', '֤ȯ����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '2', '���ڻ���ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ', '3', '������ȯҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0a', '��������(0��ǿ�ƶ���1ǿ�ƶ���)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0b', '����У������(0��ǿ��1ǿ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0c', '����δ�����˿���(0-���� 1-������ʾ 2-��ֹ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0d', '����70�꿪��(0-���� 1-������ʾ 2-��ֹ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0e', '�����֤ʱ��֤����ַ������ͥ��ַ(0-��ֵ 1-����ֵ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0f', '���˱���¼�뿪��������(0-������ 1-����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0g', '��֤�����Ƿ�ǿ��¼��(0-��ǿ�� 1-ǿ��¼��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0h', '���˱��뽨�������ϵ(0-��ǿ�� 1-ǿ��¼��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0i', 'һվʽ�����Ƿ��������ʻ�(0-������ 1-����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0j', 'һվʽ�����еǿ����ĵ�ַ(0-֤����ַ 1-��ϵ��ַ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0k', 'һվʽ�����еǿ�������ʧ���Ƿ���Ҫ��ӡ(0-��ӡ ����Ϊ����ӡ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0m', 'һվʽ�����Ƿ�Ĭ�Ͽ�ͨ�������(0-����ͨ 1-��ͨ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0n', '��һվʽ�����Ƿ����������˻�(0-������ 1-����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0o', '��һվʽ�����Ƿ��������ʽ��˺�(0-������ 1-����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_BIZ_CFG', '0p', 'һվʽ����(��)�Ƿ������޸������֤ҳ��(0-������ 1-����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '0', '��̨����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '1', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '2', '��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '3', '˫�˼�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '4', '�ֻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPEN_SOURCE', '5', 'QQ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '0', '��ͨ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '1', '���ý��ײ���Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '2', 'OTC����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_EXT_ATTR', '3', '��Ʊ��Ȩ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_FLAG', 'A', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPER_FLAG', 'C', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPTION_TYPE', '1', '��ֵƥ��(ǰ�պ�:x1=<Value<x2)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPTION_TYPE', '2', '��ֵƥ��(ǰ�պ������:Value>=x1)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPTION_TYPE', '3', '��ֵƥ��(ǰ�պ��:x1=<Value<=x2)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_APP_TYPE', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_APP_TYPE', '1', '�޲�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '0', 'ɢ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '0', '�ͻ�2.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '1', '�ͻ�1.98��1.8��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '1', '�л�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '2', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '2', '�ͻ�2.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '3', '�ͻ�2.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '3', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '4', '�ͻ�2.3', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '5', '�ͻ�2.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '6', '�ͻ�2.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '7', '�ͻ�1.98', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '8', '�ͻ�2.8��xzj��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', '9', '���Ͽͻ�����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'a', '�ͻ�2.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'b', '�ͻ�1.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'c', '�������ֲ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'd', '�ͻ�1.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'e', '�ͻ�1.2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'f', '�ͻ�1.1', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'g', '�ͻ�1.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'h', '�ͻ�0.9', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'i', '�ͻ�0.8', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'j', '�ͻ�0.7', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'k', '�ͻ�0.6', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'l', '�ͻ�0.5', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'm', '�ͻ�0.4', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'n', '�ͻ�3.0', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'o', '����ʽ������˻�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'p', '����ʽ���������', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'q', '���ϲ��淶��2', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'r', '���ϲ��淶��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 's', '���������߻�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 't', '�����淶��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'u', '�����ݻ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'v', '��ݲ���Ӧ��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'w', '���߻�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'x', '���߶��ủ', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_CLS', 'y', '������ܻ�����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_GRP', '0', '��ͨ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_GRP', '0', '��ͨ�ʻ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_GRP', '1', '����', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '*', '123', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '0', '��ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '0', 'ɢ������', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_CUACCT_LVL', '2', 'af', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '0', '���ϸ�Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '1', 'һ��Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '2', '����Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_LVL', '3', '����Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '01', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '02', '�ױ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '03', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '04', '��Ʒ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OPT_TRDACCT_USAGE', '05', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_CLS', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_CLS', '1', '������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '2', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OP_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '0', 'δ�ɵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '1', '���ɵ���δ��ϵ�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '2', '����ϵ�ͻ���δ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '3', '��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '4', '�Ѽ�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '5', '�ܾ�������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATE', '6', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '0', 'δ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '2', '�ѱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '3', '�ѱ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '4', '���ɴ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '5', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '6', '�ѳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '7', '���ɴ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '8', '�ѳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', '9', '�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_STATUS', 'A', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_TYPE', '0', '�޼�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_TYPE', '1', '�м�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_VALID_FLAG', '0', '��Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDER_VALID_FLAG', '1', '��Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '0', 'ί�м۸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '1', '��ǰ�۸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '2', '�񿪼۸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORDPX_FLAG', '3', '���ռ۸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '00', '�ܲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '01', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '02', 'ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '10', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '11', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '12', '��̨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '13', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '14', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '20', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '21', '�Ǽǽ��㹫˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '30', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_CLS', '40', '�ڻ���˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_SCOPE', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_SCOPE', '1', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_SCOPE', '2', '����������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '0', '�ڲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '1', '���л���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '2', '������/�Ǽǹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '3', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ORG_TYPE', '4', '�ڻ���˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDFUND_FLAG', '0', '��������ǰʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDFUND_FLAG', '1', '������ǰʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDSHARE_FLAG', '0', '��������ǰʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'OTDSHARE_FLAG', '1', '������ǰʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PARCHKER_FLAG', '0', '���ָ���ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PARCHKER_FLAG', '1', 'ȫ������ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '0', '��ͨ�ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '1', '������ͨ�ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '2', '���޺ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '3', '�Ƿ��˷Ǻϻ��ƴ�Ͷ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAR_ENTERPRISE_TYPE', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '1', '֤ȯ��˾�ڳ���֤ȯ��˾Ϊ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '2', '�ʹܼƻ��ڳ���֤ȯ��˾Ϊ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '3', '�ʹ��ӹ�˾�ڳ����ʹ��ӹ�˾Ϊ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '4', '�����ʹܿͻ��ڳ�������ͻ�Ϊ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '5', '�����ʹܿͻ��ڳ���֤ȯ��˾Ϊ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '6', '�ʹ��ӹ�˾�ͻ��ڳ�������ͻ�Ϊ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAWNEE_CLS', '7', '�ʹ��ӹ�˾�ͻ��ڳ����ʹ��ӹ�˾Ϊ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_DIV_FLAG', '0', '����������Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_DIV_FLAG', '1', '��������Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '1', '�ֽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '1', '�ֽ�', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '2', '���', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '2', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '3', '��֤��', '101'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_MODE', '3', '��֤��۳�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_TYPE', '0', '�ֽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_TYPE', '1', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_TYPE', '2', '����Ӷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '0', '��֤��֧��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '1', '������֧��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '2', '����֧�������⣩', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '3', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PAY_WAY', '4', '�ⲿ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERBIZ_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERBIZ_STATUS', '8', '�¹���ǩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERBIZ_STATUS', '9', '�ѹر�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '2', '��Ȼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PERIOD_TYPE', '3', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PK_FLAG', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PK_FLAG', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', '0', '�߲������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', '1', '�в������Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', '2', '��ְͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', 'Y', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSITION', 'Z', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'A', '����ĵ��˻������ֲܳ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'B', '����ĵ��˻����˷Ǳ��ҳֲ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'C', '����ĵ��˻�һ������ֲܳ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'D', '����ĵ��˻�һ������Ǳ��ҳֲ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'E', '����ĵ��˻���Ӫ�ֲܳ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'F', '����ĵ��˻���Ӫ�Ǳ��ҳֲ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'G', '����ĵ��˻��������ֲܳ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'H', '����ĵ��˻������̷Ǳ��ҳֲ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'I', '��Ա���͵���ĵ����ֲܳ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'POSI_LMT_ATTR', 'J', '��Ա��Ӫ����ĵ����ֲܳ��޶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '01', '֤ȯ��˾������Ʋ�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '02', '֤ȯ��˾ר���ʲ�����ƻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '03', '����˾�ض��ͻ��ʲ������Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '04', '����˾�ض��ͻ��ʲ������Ʒ�����գ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '05', '����˾�ض��ͻ��ʲ������Ʒ�����У�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '06', '���ʽ֤ȯͶ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '07', '����ʽ֤ȯͶ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '08', '˽ļ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '09', '����֤ȯͶ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '10', 'ȫ���籣����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '11', '�ط��籣����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '12', '���в�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '13', '���ղ�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '14', '�����ʲ������Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '15', '�ڻ��ʲ������Ʒ(��ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '16', '�ڻ��ʲ������Ʒ����һ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '17', '��ҵ���ƻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '18', 'QFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '19', 'RQFII', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '20', '���Ͻ��Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '21', '������Ʋ�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '22', '���й�˾Ա���ֹɼƻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRDT_CLS', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '0', '����ͬ��š��ɶ����롢֤ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '1', '���ɶ����롢֤ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '2', '���������ڡ��ɶ����롢֤ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '3', '���������ڡ���ͬ��š��ɶ����롢֤ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREMATCH_RULE', '4', '���������ڡ��ɽ���š��ɶ����롢֤ȯ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREORDER_FLAG', '0', '������Ԥί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PREORDER_FLAG', '1', '����Ԥί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIFEE_CAL_METHOD', '0', 'ȡ�������ݼ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIFEE_CAL_METHOD', '1', '���ݷ������ü���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '1', '����1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '2', '����2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '3', '����3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '4', '����4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVACY_LEVEL', '5', '����5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVATE_FUND_TYPE', '1', '˽ļ����ϸ�Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVATE_FUND_TYPE', '2', '˽ļ����ϸ����Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRIVATE_FUND_TYPE', '3', '˽ļ�����ر�Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '1', '����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '2', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_FLAG', '3', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_RESULT', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_RESULT', '1', '�Ѵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROC_RESULT', '2', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '00', '��ͨͶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '01', '����������ͨͶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '10', 'רҵͶ����I��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '11', 'רҵͶ����II��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_SOURCE', '12', 'רҵͶ����III��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_TYPE', '0', '��ͨͶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROF_INVESTOR_TYPE', '1', 'רҵͶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROPER_CLS', '1', '��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROPER_CLS', '9', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROP_TYPE', '0', '�ڲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PROP_TYPE', '1', '�ⲿ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '1', '���ƹ�˾�ϸ�Ͷ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '3', '������˾�����й�˾����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '4', '������˾�����й�˾����Ȩ��ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_ACCT_TYPE', '5', '���ȹɺϸ�Ͷ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '1', '֤ȯ��˾�ʲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '2', '�������˾(��ļ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '3', '˽ļ�������˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '4', '��ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '5', '����Ͷ�ʹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '6', '�ڻ���˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '7', '���չ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_MANAGER_QUAL_TYPE', '8', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_TRUSTEE_QUAL_TYPE', '1', '��ҵ�����й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRO_TRUSTEE_QUAL_TYPE', '2', '֤ȯ��˾�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRT_FLAG', '0', '����ӡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRT_FLAG', '1', '��ӡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PRT_FLAG', '2', '����ӡ�������ɲ����ļ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PUB_TYPE', '0', 'ϵͳ����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PUB_TYPE', '1', '�ڲ�ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PUB_TYPE', '2', '�ⲿϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '2', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '3', '֧���ʻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '4', '֧���ʻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '5', '����δȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ACC_STATUS', '6', '�ʻ��޸�δȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_CHANNEL', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_CHANNEL', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'PY_ORG_CODE', '1', 'ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUALITY_TYPE', '1', 'һ����տͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUALITY_TYPE', '2', '�з��տͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUALITY_TYPE', '3', '�߷��տͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUERY_FLAG', '0', '����Ϊ��ѯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'QUERY_FLAG', '1', '����Ϊ��ѯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '01', '֤ȯ��˾��Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '02', '֤ȯ��˾���ϻ�ר��ƻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '03', '�ʹ��ӹ�˾���ϻ�ר��ƻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '04', '֤ȯ��˾����ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RCLB_CLS', '05', '�ʹ��ӹ�˾����ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RC_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RC_STATUS', '1', '��ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REBATE_MODE', '0', 'ȫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REBATE_MODE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '00', '֤ȯ��Ӫ�����ڲ����ż�¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '01', '�й�����������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '02', '�������Ժʧ�ű�ִ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '03', '���������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '04', '˰��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '05', '��ܻ�����������֯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '06', '����άȨ�Ȳ�����Ϊ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RECORD_SOURCE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_STATUS', '0', 'ֻ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_STATUS', '1', '�����޸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_TYPE', '0', '�ڵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REGKEY_TYPE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_COMM', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_COMM', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_COMM', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '3', '�߹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '4', '��δ������۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '5', '���ѽ�����۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '6', '���۹���Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELAKIND_PUBCOM', '7', '�������й�˾5%���ϹɷݵĿͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '00', '��ż', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '01', '��ĸ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '02', '��Ů', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '03', '�������ݹ�ϵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '04', '�ϻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '05', 'ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '06', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '0Z', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '10', '�ӹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '11', 'ĸ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '12', '������˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION', '13', ' ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION_FLAG', '0', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RELATION_FLAG', '1', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_BIZ_TYPE', '01', 'һ��ͨҵ��Խӹ�Ա��¼ÿ��Ӫҵ����һ��ͨ�ĶԽӹ�Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_BIZ_TYPE', '02', 'һ��ͨҵ��һվʽ�����Ƿ����ԤԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_PROTOCOL', '0', 'δǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_PROTOCOL', '1', 'ǩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '0', '��ͨ����ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '1', '������ȯϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '2', '��Ʊ��Ȩϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOTE_SYS', '3', 'ͳһ��֤ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_FORBID_FLAG', '0', 'δ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_FORBID_FLAG', '1', '�ѽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_LMT_CLS', '1', '�����ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_LMT_CLS', '2', '�����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REMOVE_LMT_CLS', '3', '�����˻�ȯ�̹���ϵͳע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REORD_FLAG', '0', '�������ظ�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REORD_FLAG', '1', '�����ظ�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FCERT_FLAG', '0', '����ʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FCERT_FLAG', '1', '��ֹʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FFUND_FLAG', '0', '����ʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_FFUND_FLAG', '1', '��ֹʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MCERT_FLAG', '0', '����ʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MCERT_FLAG', '1', '��ֹʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MFUND_FLAG', '0', '����ʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPCH_MFUND_FLAG', '1', '��ֹʹ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPLY_ATTACK', '0', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REPLY_ATTACK', '1', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REQ_STATUS', '0', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REQ_STATUS', '1', '���ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REQ_STATUS', '2', '��˲�ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVIEW_STATUS', 'F', '��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVIEW_STATUS', 'T', 'ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '0', 'δ�ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '1', '�ѻطóɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '2', '�ܾ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '3', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'REVISIT_STATUS', '4', '�����»ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RIGHT_TYPE', '0', 'ִ��Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RIGHT_TYPE', '1', '��ȨȨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RIGHT_TYPE', '2', 'ִ�к���Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '0', '�����淶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '1', '����ȱʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '2', 'һ�Զ໧', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '3', 'δԤ�������ʺŻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '4', '���м�ܻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '7', 'ϴǮ�ͷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '8', 'ϴǮ�з���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FACTOR', '9', 'ϴǮ�߷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '10', '׷�ɵ���Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '11', '��ծ����ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '12', '��Լ����ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '13', '�ṩ�����Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '14', '˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '15', '���ճ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '16', '˾���᰸', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_FLAG', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_LVL', '0', '�ͷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_LVL', '1', '�з���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_LVL', '2', '�߷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '0', '�ͷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '1', '�еͷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '2', '�з���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '3', '�и߷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RISK_PROPRIGHT', '4', '�߷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RNT_MODE', '0', '�ֹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RNT_MODE', '1', '�Զ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '0', '���ý�ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '1', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '2', '���÷ַ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPC_STATUS', '3', '���÷ַ�ǿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '000', '�е��ʼ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '010', '����/���˿ͻ�����ȷ�ϻ�ִ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '011', '���ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '012', '����ʽ���𿪻�ȷ�ϻ�ִ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '013', '������ܱ��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '014', '������ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '015', 'Ȩ֤ǩ��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '016', '�ӹһ�ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '017', '��ҵ��ǩ��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '018', '���忪��ȷ�ϵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '019', '������֤��ҳ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01a', '���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01b', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01e', '�۰�̨�ͻ���֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '01h', 'ծȯ�г�רҵͶ�����ʸ�ȷ�ϱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '020', '���֤��Ƭ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '021', '��ͷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '022', '�������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '023', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '024', '�ͻ������ʺŸ�ӡ����ǱӰ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '025', '�۰�̨����֤��̨��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '026', '����֤/��ᱣ��֤/����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '027', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '028', '���ڱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '029', 'ʿ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02a', '���֤���ļ���ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02b', '���ֳ�������Ӱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02c', '���п���Ƭ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02d', '��۾������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02e', '���ž������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02f', '̨��������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02g', '��۾���ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02h', '���ž���ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02i', '̨�����ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02j', '��ʱס�޵Ǽ�֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '02k', '��������þ���֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '030', '������ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '031', '������ճ�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '032', '������ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '033', '���𿪻�Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '034', '�ɷ�ת��ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '035', '�ɷ�ת�÷�����ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '036', '�������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '037', '��֤ת��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '038', '����ʽ������ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '039', '֤ȯͶ�ʻ���Ͷ����Ȩ����֪', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03A', '����ҵ��ͨ״̬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03a', '�ֻ�����ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03b', '����ί��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03g', '���ͻ�������Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03h', '����Ӷ��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '03z', '����Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '040', '���˷���ǼǱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '041', '��������ǼǱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '042', '֤ȯͶ�ʷ��ճ������������ʾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '043', '�ͻ��ʲ��䶯�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '044', '�ͻ��ʲ��䶯ȷ�ϻ�ִ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '045', 'ָ������Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '046', 'Ȩ֤���ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '047', '��Ȼ��ע���ʻ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '048', '����֤ȯ�ʻ�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '049', '֤ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04a', '��ҵ���г�Ͷ�ʷ��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04b', 'ע��֤ȯ�ʻ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04c', 'ί�����Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04d', '�ͻ�����ת��Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04e', '�ͻ��ʻ��ϲ�Э��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04f', 'ת�й�/��ָ��Э����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04g', '��ʧ����֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04h', '�ϲ�֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04i', '��������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04j', 'ע������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04k', '֤ȯ�˻�ע�����ϲ�ѯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04l', '�ϻ���ҵ�ȷǷ�����֤֯ȯ�˻�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04m', '�ϻ���ҵ�ȷǷ�����֤֯ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04o', 'ծȯ�г�רҵͶ���߷��ս�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04y', '֤ȯҵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '04z', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '050', 'Ӫҵִ�ո���/���ŷ���ע��Ǽ�֤/������ҵ���˳�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '051', '��֯��������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '052', '˰��Ǽ�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '053', '����������֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '054', '������������Ȩί����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '055', '���������ʺ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '056', '�������������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05a', 'Ԥ��ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05b', 'Ӫҵִ�ո�ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05c', '��֯��������֤��ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '05d', '˰��Ǽ�֤��ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '060', '��A�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '061', '��B�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '062', '��B�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '063', '���ڻ����ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '064', '����A���ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '065', '����B���ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '066', '��/���������ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '067', '��A�ɶ��ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '068', '�Ϻ������ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '069', '����֤ȯ�˻���(�Ϻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '06a', '����֤ȯ�˻���(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '070', '�������ٹ���Ƭ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '071', '�����˾������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '072', '�����˻���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '073', '�����˸۰�̨����֤��̨��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '074', '����������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '075', '��֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '076', '��Ȩί����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '07a', '���������֤���ļ���ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '080', '��֤ͨȯ�˻�/�ʽ��˻�֤���ļ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '081', '����֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '082', '��ס֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '083', '����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '084', '���ڴ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '085', '���ڴ浥', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '086', 'ƾ֤ʽ��ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '087', '���������ʲ�(��Ʋ�Ʒ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '088', '���з���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '089', '���Ҵ����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08A', '��Ȼ������֤ȯ�˻�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08B', '��������֤ȯ�˻�ע�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08C', '��Ȼ������֤ȯ�˻���ѯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08D', '��������֤ȯ�˻���ѯ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08E', '��Ȼ������֤ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08F', '��������֤ȯ�˻�ע�����ϱ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08G', '��Ȼ�˹�ʧ��������֤ȯ�˻��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08H', '������ʧ��������֤ȯ�˻��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08I', '��Ȼ��ע������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08J', '����ע������֤ȯ�˻������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08K', '�����ʽ��˻����������(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08L', '�����ʽ��˻����������(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08M', '�����ʽ��˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08N', '�����ʽ��˻����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08a', '�����ʲ�(��������ȨͶ�ʵ�)֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08b', '�����˵���ż��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08c', '�������ڻ�����������(��)����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08d', '���г��������εĳ�ŵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08e', '���ϸ�Ĵ��(֤)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08f', '���������˵�������ǩ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08g', '����������ȯҵ�������ļ���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08h', '�칫��ַ֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08i', '���Ȳ��񱨸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08j', '���跨������֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '08z', '����������ȯ��Ҫ�ύ�Ĳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_CLS', '099', '����Ͷ����ҵ��׼֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_MODE', '1', '��ӡ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_MODE', '2', '��ֽ�ʵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', '1', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', '2', '�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RPT_STATUS', 'S', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '00', '�ڲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '01', '���л���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '02', '�Ǽǹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '03', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '04', '�ڻ���˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '10', '���㷨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '11', '�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '12', '����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '13', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '14', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '20', '�ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '30', '����A�ɹɶ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '31', '����B�ɹɶ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '32', '�Ϻ�A�ɹɶ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_CLS', '33', '�Ϻ�B�ɹɶ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '1', '�û���ɫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '2', '�ʲ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTOBJ_TYPE', '3', '�ɶ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTRES_TYPE', '0', 'ȫ��Ȩ����Դ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RTRES_TYPE', '1', '�ֲ�Ȩ����Դ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RZFX_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'RZFX_TYPE', '1', '�ڳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SALE_FLAG', 'N', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SALE_FLAG', 'Y', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '2', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SECU_CLRS_BIZ_STATUS', '3', '������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEC_ACCT_FLAG', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEC_ACCT_FLAG', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '100', 'Ӱ���ϴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '200', '������Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '300', '��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '400', '����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '500', '�˻���Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '600', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SELF_PHASE', '700', '¼�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEND_TO_BANK', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEND_TO_BANK', '1', '�跢��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', '1', '������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', '2', 'ҵ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', 'A', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', 'B', '������������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERIAL_TYPE', 'C', '������ҵ����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '0', '1��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '1', '2��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '2', '3��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '3', '4��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_LVL', '4', '5��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '00', '��֤ͨȯ����/�ⶳ�걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '01', '֤ȯ���������ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '02', '��֤ͨȯЭ�����ᵱ���걨��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '03', '��֤ͨȯЭ�����ᵱ���걨����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '08', 'ծȯ���г�ת�й�ת���걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '09', 'ծȯ���г�ת�й�ת���걨����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SERVICE_TYPE', '10', 'ծȯ���г�ת�й�ת���걨��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DATE_FLAG', '0', '�ǽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DATE_FLAG', '1', '�ǽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DLVY_TYPE', '0', '��ͬ������DAP��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DLVY_TYPE', '1', 'T+n����DVP����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_DLVY_TYPE', '2', 'T+n���ȫ��ǵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '0', 'δ��ʼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '2', '��ͣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '3', 'ȡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_STATUS', '4', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '1', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '2', '�ͻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '3', '�ͻ���֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '4', 'ͳһ�ʻ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '5', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '6', '�����Ǽǹ�˾���ݴ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '8', '�������ݵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', '9', '��������ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_JOB_TYPE', 'A', '�������ݵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_STATUS', '1', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_STATUS', '2', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_STATUS', '3', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '01', '�����˻�(�ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '02', '�����˻�(��Ӫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '11', '������(�ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '12', '������(��Ӫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '21', '��ת�����˻�(�ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '22', '��ת�����˻�(��Ӫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '31', '��Ȩ�����˻�(�ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '32', '��Ȩ�����˻�(��Ӫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '41', '���ý����˻�(�ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '42', '���ý����˻�(��Ӫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '51', '����������(�ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '52', '����������(��Ӫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '61', '���ͨҵ�������(�ͻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SETT_TYPE', '62', '���ͨҵ�������(��Ӫ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEX', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEX', '1', 'Ů��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SEX', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '06', '�����Ѳ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '11', 'Ͷ�������ϲ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '12', 'B���˻���������Ա(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '13', 'B���˻���������Աָ���ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '14', 'B���˻���������Աָ���(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '15', '��A�����˻������ˣ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '16', '�ͻ�����֤ȯ�˻���Ų�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '17', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '18', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '19', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '1E', '��A�����˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '20', '���ϸ��˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '21', '���г�ת�Ǽǲ��Ǽ��걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '22', 'B��ָ�������걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '23', '���Ϲ��˻��Ϲ汨��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '24', '���ϸ��˻����Ͳ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '25', 'δ�淶���ϸ��˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '26', 'δ�淶���ϸ��˻��Ϲ汨��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '27', 'δ�淶���ϸ��˻��ⶳ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '28', 'δ�淶���ϸ��˻����Ͳ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '29', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '2A', '���ϸ��˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '2B', '�Ѵ����ϸ��˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '30', 'B���˻�������Ϣ��ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '31', '֤ȯ�˻�����(��)(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '32', '֤ȯ�˻������޸�(��)(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '33', '֤ȯ�ʻ����ϲ�ѯ(��)(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '34', '֤ȯ�˻�������(��)(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '40', '�״ν������ڲ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '41', '�ϻ�����Ϣ�걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '42', '�ϻ�����Ϣ��ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '43', '�ϻ�����Ϣɾ��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '44', '֤ȯ�˻������޸���ʷ��ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '50', '��Ʊ��Ȩ��Լ�˻�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '60', '��ʧ/�����걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', '61', '��ʧ/������ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'A0', '�ɶ�������(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'B0', '�ɶ�����ʧ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'C0', '�ɶ���������ʧ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'D0', '�ɶ���ת��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'Q3', '����ȫ��ʹ����Ϣ��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCTBIZ_EXCODE', 'Q4', '����ȫ��ע�����ϲ�ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '01', '��A�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '02', '��A�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '03', '��A��Ӫ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '04', '��A�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '05', '��B���ڸ����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '06', '��B��������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '07', '��B��������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '08', '�ϻ���A���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_EXTYPE', '09', '��A�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '00', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '10', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '20', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '40', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHACCT_STATUS', '90', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '00', '��������ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '01', '���ƺ���������۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '02', '��Ȩ�������۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '03', '���ƺ���������۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '04', '�߹�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '05', '����ǰ���������۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_ATTR', '06', '����ǰ���������۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_AUDIT_FLAG', '0', '����Ҫ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_AUDIT_FLAG', '1', '��Ҫ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '0', '��Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '1', '���㶳��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '2', '����ⶳ(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '3', '����ⶳ(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_DLVY_STATUS', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLAG', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLAG', '1', '���ݿ⹲��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLAG', '2', '���ع���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'F', '���仯', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'M', '�ɷ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'P', '�ɷ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHARE_FLOW', 'X', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '01', '��Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '02', '�����ʲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '03', '�����ʲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '04', 'ר���ʲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SHRCLB_CLS', '05', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', '0', 'T+0��ͨ(0);', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', '2', 'T+2��ͨ����(2)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', '5', 'T+5��ͨ����(5)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_CLS', 'A', '�����ڱ���˾ǩ����ս�ʾ��(A)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_TYPE', '0', ' ����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_TYPE', '1', ' ��̬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SIGN_TYPE', '2', 'ֽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SITE_TYPE', '0', 'MAC��ַ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SITE_TYPE', '1', 'IP��ַ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SITE_TYPE', '2', '�绰����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SL_CON_TYPE', '1', '�ȵ��ȵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SL_CON_TYPE', '2', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '1', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '3', 'ת�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SMS_CLS', '4', '����ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '0', 'һ��ͨҵ�����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '1', 'һ��ͨҵ�����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '2', '���ͻ��������ϲ鿴Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '3', '�����ͻ��������ϲ鿴Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '4', '����Ա��������Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '5', '���Ը���Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '6', '���ֳ�����Ȩ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_RIGHTS', '7', 'OEM������Ϣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '1', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '2', '�ѱ��Ϊ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '3', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '4', '�Ų��̳�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPECIAL_STATUS', '5', '˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPEC_ORG_TYPE', '0', '֧������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SPEC_ORG_TYPE', '1', '�Ǽǻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '1', '΢��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '2', '�븻ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '3', '�ʼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '5', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '6', '�ֳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_CHANNEL', '7', '�绰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '0', 'ÿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '1', 'ÿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '2', 'ÿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '3', 'ÿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '4', 'ÿ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '5', 'ÿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SRV_FREQ', '6', '����', '0'
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
EXEC nb_add_SYS_DD_ITEM 'STDS_SUBSYS_SN', '38', '�Ϻ��충', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STDS_SUBSYS_SN', '39', '���ڿ충', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '00', '���ڣ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '01', '���ڣ¹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '02', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '03', '���и۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '05', '���ڹ�Ʊ��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '10', '�Ϻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '11', '�Ϻ��¹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '13', '���и۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '15', '�Ϻ���Ʊ��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '20', '��ת����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKBD', '21', '��ת�¹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX', '0', '���ڽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX', '1', '�Ϻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX', '2', '��תϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX_ID', 'BJEX', '��תϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX_ID', 'SHEX', '�Ϻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKEX_ID', 'SZEX', '���ڽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_CLS', '0', '��Ӫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_CLS', '1', '�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_MODE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_MODE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_TYPE', '0', '��ͨ���׵�Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKPBU_TYPE', '1', '���ý��׵�Ԫ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', '1', ' ��ֹetf�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', '2', ' ��ֹetf���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'B', ' ��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'C', ' ��ֹ��ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'H', ' ���ع�ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'J', ' ��ֹ�м�ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'Q', ' ��ֹ��ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'R', ' ��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'S', ' ��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STKTRDACCT_LIMIT_RIGHT', 'Z', ' ��ֹת�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '100', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '101', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '102', '֤ȯ���۶�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '103', '�¹��깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '104', '�¹�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '106', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '107', 'ҪԼ�չ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '108', '���ҪԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '110', '��Ѻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '111', '��Ѻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '113', '��ֵ�����¹��깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '115', '��Ѻ����Ҷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '116', '��Ѻ�����ҽⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '130', '�۹�ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '131', '�۹�ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '140', '��ծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '145', 'ծȯ�Ҹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '146', 'ծȯ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '150', '�ع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '151', '�ع���ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '152', 'תծ�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '153', 'תծ��ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '160', 'תծת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '161', 'תծ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '162', '��ϻع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '163', '��ϻع���ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '164', '��Ѻ�ع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '165', '��Ѻ�ع���ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '170', '���һ����깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '171', '���һ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '172', '���һ��������ת', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '175', '�ʹܷݶ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '176', '�ʹܷݶ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '180', 'ETF�����ֽ��Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '181', 'ETF�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '182', 'ETF���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '183', 'ETF�����ֽ��Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '184', 'ETF���¹�Ʊ�Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '187', '�羳ETF�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '188', '�羳ETF���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '190', '����ʽ�����Ϲ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '191', '����ʽ������г�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '192', '����ʽ����ֺ췽ʽ�趨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '193', '����ʽ����ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '194', '����ʽ�����깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '195', '����ʽ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '196', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '197', 'TA����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '198', '����ʽ�����Ϲ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '200', 'Ȩ֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '201', 'Ȩ֤ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '202', '֤ȯ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '203', '֤ȯ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '204', '�ֽ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '205', '�ֽ�������Ϲ�Ȩ֤��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '206', '������Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '208', 'ETF�깺����ֽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '209', 'ETF�깺����ֽ���������ٲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '220', 'BתH��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '230', '��ծԤ�������뿪��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '231', '��ծԤ������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '232', '��ծԤ��������ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '233', '��ծԤ��������ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '260', '���ƹ�˾��Ʊ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '261', '���ƹ�˾��Ʊ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '262', '���ƹ�˾��Ʊ�����ɽ�ȷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '263', '���ƹ�˾��Ʊ�����ɽ�ȷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '264', '���ƹ�˾��Ʊ�ɽ�ȷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '265', '���ƹ�˾��Ʊ�ɽ�ȷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '300', 'ָ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '301', '����ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '302', '�ع�ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '303', '�ع�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '330', '֤ȯת�йܳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '340', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '345', '�鰸ͶƱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '346', '����ͶƱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '350', '�ʹܷݶ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '355', '�ʹܷݶ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '499', '֤ȯת��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '500', '�¹ɵǼ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '501', '�ɷ��й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '502', '�ϲ�֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '503', '����֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '504', '��ɵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '505', '��Ϣ�ɷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '506', '�˿���Ϣ��ϸ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '508', '֤ȯת�й���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '510', 'ETF�Ϲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '600', '˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '601', '˾������ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '602', '˾����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '603', '˾�������ֺ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '604', '˾�������ֺ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '610', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '611', '֤ȯ�ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '612', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '613', '�ɷ�ת��ת��ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '614', 'ծȯ����ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '620', '֤ȯת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '623', '�ɷ��������ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '624', '����ת���ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '640', '������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '700', '����Ʒ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '701', '����Ʒ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '702', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '703', '��ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '704', '��ȯ��ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '705', '��ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '706', '����ƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '707', '��ȯƽ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '708', '����Ʒת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '709', '����Ʒת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '710', '��ȯ��ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '711', '��ȯ��ת', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '800', '��ծ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '801', '��ծ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '802', 'ժ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '820', '�̺���𣭣��ϲ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '821', '�̺���𣭣����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '825', '���г�ETF�ֽ��깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '826', '���г�ETF�ֽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '827', '���г�ETF�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '828', '���г�ETF���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '829', '�̺���г�ETF�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '830', '��֤LOF�Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '831', '��֤LOF�깺', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '832', '��֤LOF���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '833', '��֤LOFת�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '834', '��֤LOF���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '835', '��֤LOF�ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '850', '���۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '855', '���ۻع���ʼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '856', '���ۻع����ؽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '865', '���ۻع���Ѻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '866', '���ۻع���Ѻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '870', 'Լ�����س�ʼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '871', 'Լ�����ع��ؽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '872', 'Լ�����ص��˻ز�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '873', 'Լ�����ص��˹���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '880', '��Ʊ��Ѻ��ʼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '881', '��Ʊ��Ѻ���ؽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '882', '��Ʊ��Ѻ������Ѻ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '883', '��Ʊ��Ѻ�����Ѻ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '884', '��Ʊ��Ѻ��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '885', '��Ʊ��ѺΥԼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '950', '֤ȯ����(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '951', '֤ȯ����(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '981', '��̨���Ѵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '991', '��̨��Ϣ������𻯸�˰��˰����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ', '992', '��̨��Ȩ����������Ȩ��ʱ��˰����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '0', '��Чҵ����Ϊ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '100', 'ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '500', '����ɽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '510', '�����ɽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '520', '��ɿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '521', '��ɽɿ�(�Ϻ�)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '522', '�˿���Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '523', '��ɵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '524', '��ɽɿ�(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '530', 'ҪԼȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '531', 'ҪԼ�ɷݹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '532', 'ҪԼ�ʽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '534', 'ҪԼ���ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '550', 'ȫ���깺��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '551', '�깺��ȷ�ϼ�¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '552', '��ż�¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '553', 'ȫ����Ч�깺��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '554', '�Ϲɶ����ȿ����ۼ�¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '555', '��ֵ����ȷ�ϼ�¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '556', '��ǩ��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '601', '��Ѻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '602', '��Ѻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '610', '���ʻع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '611', '���ʹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '612', '��ȯ�ع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '613', '��ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '614', '��Լ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '615', '��ϻع�����֪ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '616', '��Լ�𷵻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '620', 'ȷ��ծȯ��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '621', 'ȷ�Ϲ�Ʊ��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '622', '��ծ�ʽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '630', '��תծ����ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '631', '��תծ�����ʽ𷵻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '700', 'ȫ���깺��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '701', '�깺��ȷ�ϼ�¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '702', 'ȫ����Ч�깺��¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '703', '�Ϲ������¼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '704', 'TA�Ϲ�ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '710', '�깺�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '711', '�깺�ɷݹɹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '712', '�깺�ֽ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '713', '�ֽ���Ӧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '714', '�ֽ���Ӧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '720', '��ػ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '721', '��سɷݹɹ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '722', '����ֽ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '724', '�ֽ�����˿�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '725', '�ֽ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '750', 'ȫ���깺ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '751', '�깺��Чί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '752', 'LOF�깺ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '760', 'ȫ�����ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '761', '�����Чί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '762', 'LOF���ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '790', 'Ȩ֤��Ȩ������Ӧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '791', 'Ȩ֤��Ȩ������Ӧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '792', 'Ȩ֤��Ȩ�����ʽ�Ӧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '793', 'Ȩ֤��Ȩ�����ʽ�Ӧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '800', '���֤ȯ�Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '801', '���֤ȯ�Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '802', '��ȨӦ���ʽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '803', '��ȨӦ���ʽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '808', '��Ȩ����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '809', '���մ�Ϊ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '810', '�ϲ�֤ȯ�ʻ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '811', '�ϲ�֤ȯ�ʻ�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '812', '֤ȯת��ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '813', '֤ȯת��ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '815', '����֤ȯ�˻�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '816', '����֤ȯ�˻�ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '820', '����ת�й�ת������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '821', '����ת�й�ת��ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '822', '����ת�й�ת��ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '825', '����ֺ췽ʽ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '826', '�������ֺ췽ʽ����ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '830', '����ת������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '831', '����ת��ȷ��(Ŀ��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '832', '����ת��ȷ��(Դ)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '835', '�������ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '840', '��ָͨ��״̬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '841', '�ع�ָ��״̬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '842', 'ָ�����׹ɷݵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '845', '֤ȯת��ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '846', '֤ȯת��ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '850', '֤ȯת�йܳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '860', '�Ǽǹ�˾����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '870', '����ݶ��ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '871', '����ݶ�ⶳȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '872', '�ǽ��׹���ת��ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '873', '�ǽ��׹���ת��ȷ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '874', 'ǿ�е���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '875', 'ǿ�е���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_ACTION', '876', 'ǿ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C1', 'ȫ��һ��ͨ�˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C2', 'ȫ��֤ȯ�˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C3', 'ȫ��֤ȯ�˻�ʹ����Ϣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C4', 'ȫ���ʵ��Թ�����Ϣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_BIZ_CLS', 'C5', 'ȫ�岻�ϸ��˻���Ϣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CAL_MKTVAL', '0', '��������ֵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CAL_MKTVAL', '1', '������ֵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'A', '��Ʊ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'B', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'C', 'Ͷ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'D', 'ETF����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'E', 'LOF����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'G', 'Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'H', '��ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'I', 'ʵ���ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'J', '��ҵծȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'K', 'ʵ����ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'L', 'ת��ծȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'M', '��˾ծ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'N', '����ת��֤ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'O', '��ծ�ع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'P', '��ծ�ع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'Q', '��ϻع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'R', '��Ѻ�ع�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'S', '��ծ��Ѻ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'T', '��׼ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'U', '��Ʊ��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'V', '��Ʊ(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'W', 'ָ��ͳ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'X', '�鰸ͶƱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'Y', 'ָ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'Z', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CLS', 'z', '������ȯ��ת', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CUSTODY_MODE', 'A', '˫���й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CUSTODY_MODE', 'E', '�Ǽǹ�˾�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_CUSTODY_MODE', 'S', 'ȯ���й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'CDDF', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'FXJ', '���ս�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'GHF', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JSF', '���ַ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JYDF', '���׵���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JYGF', '���׹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'JYSGHF', '������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'LYJ', '��Լ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'QSF', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'SXF', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'WTDF', 'ί�е���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'YHS', 'ӡ��˰', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'YJQSF', 'һ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'ZGF', '֤�ܷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_ID', 'ZTGF', 'ת�йܷ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_OBJ', '0', 'Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FEE_OBJ', '1', '֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '1', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '3', '�ɷݹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '4', '�ֽ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_FLAG', '5', '�Ϻ�ETF����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_LOT_FLAG', '0', '�ɻ���Ϊ��λ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_LOT_FLAG', '1', '��Ϊ��λ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '0', 'ͨ��״̬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '1', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '2', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '3', '���۷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '4', '���۷���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '5', '��ծ���Ʒ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '6', '��Ȩ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '7', '��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_STATUS', '8', '��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '*', 'δ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '0', '���ɴ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '1', 'ҪԼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '2', '�Ϲ�Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '3', '�Ϲ�Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '4', 'Ȩ֤����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', '6', '���Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'A', '�깺����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'B', '�깺��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'C', '��Ŵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'D', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'E', '���۴���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'I', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'J', '�Ϲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'K', '����ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'L', '����ֺ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'M', '����ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'R', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'S', '��Ѻ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUB_CLS', 'Z', 'ת�ɴ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUSPENDED', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUSPENDED', '1', '��ʱͣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_SUSPENDED', '2', '����ͣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TRD_EXTCLS', '0', '��ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TRD_EXTCLS', '1', '���ڽ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'GF', '���з��˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'GJ', '���ҹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'GZ', '�̶�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'JJ', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'JN', '���ڷ��˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'JW', '���ⷨ�˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PG', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PS', '���۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PT', '��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'PZ', 'Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'SF', '��ᷨ�˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'XL', '������ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'YX', '���ȷ��˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'STK_TYPE', 'ZG', 'ְ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBACCT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBACCT_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBACCT_TYPE', '1', '��Ʊ��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '0', '��ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '1', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '2', '�곤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '3', '�м���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '4', 'Ա��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '5', '��ҵ��Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '6', '����ս��Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '7', '�ϸ���Ͷ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '8', '˽ļ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBJECT_IDENTITY', '9', '������������г�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '0', 'δ����Ӱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '1', '�Ѳ���Ӱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '2', 'Ӱ���ļ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBMIT_FLAG', '3', 'Ӱ���ļ��ѱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '1', '�˻�ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '10', '������ȯ��ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '11', '����֧����ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '13', 'OTC��ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '16', '��Ʊ��Ȩ��ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '18', '�ʽ����ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '2', '������ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '27', 'ͳһ��֤��ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '28', 'CIF��ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '3', '������ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '30', 'Ӱ����ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '31', '�ڻ�IB��ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '32', 'CRM��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '4', '���ݷ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS', '9', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '1', '��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '2', 'ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SUBSYS_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '0', '�ͻ����ղ���(֤ȯ-����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '1', '������տ��Ƹ��˿ͻ��ʾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '2', '������տ��ƻ����ͻ��ʾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '3', '�����˻���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '4', '����ҵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '5', '��Ʊ��Ȩ�ʵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '6', '��Ʊ��ȨͶ����׼���׼', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '7', 'OTC���ղ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '8', '���״��ͻ����ղ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', '9', '�ʵ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', 'A', '�ʵ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', 'H', '�ͻ��ط��ʾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_CLS', 'S', '˽ļͶ�ʻ���Ͷ���߷����ʾ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_COL_OPT', '0', '��ѡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_COL_OPT', '1', '��ѡ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SCORE_TYPE', '0', '�ۼӼƷַ�ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SCORE_TYPE', '1', 'ȡ���ֵ�ӼƷַ�ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SCORE_TYPE', '2', 'ȫ�ԼƷַ�ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '0', '���н���ϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '1', '������ȯϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '2', 'OTCϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '3', '��Ʊ��Ȩϵͳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '4', '���н���ϵͳ�����ڿͻ��ţ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_SYN', '9', '��ͬ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_TYPE', '0', '�͹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SURVEY_TYPE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '0', '����ʱ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '1', 'ͬ���ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '2', 'ͬ��ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYC_FLAG', '3', 'δͬ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '0', '���н���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '1', '������ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '2', 'OTC', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '3', '��Ʊ��Ȩ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SYS_RELATED', '4', '��ļ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '10', '֤ȯ�˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '11', '֤ȯ�˻��ϲ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '12', '֤ȯ�˻�ע��(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '13', '��ʧ���첻����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '14', '��ʧ���컻�º�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '15', '֤ȯ�˻����ϱ��(1)(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '16', '֤ȯ�˻����ϱ��(2)(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '17', '֤ȯ�˻����ϲ�ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '18', '�������ͨ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '19', '�����˻�����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1A', 'ʹ����Ϣ�걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1B', 'ʹ����Ϣ����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1C', 'ʹ����Ϣ��ѯ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '1D', '���ʹ�ҵ���ʵ��Թ�����Ϣ(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '2A', '�ϻ�����Ϣ�걨(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '2B', '�ϻ�����Ϣ����(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCTBIZ_EXCODE', '2C', '�ϻ�����Ϣ��ѯ(��)', '0'
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
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '00', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '50', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '51', '����֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '52', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '53', '����һ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '54', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '55', '���Ᵽ�չ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '61', '�ۺ���֤ȯ��˾(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '62', '�ۺ���֤ȯ��˾(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '63', '������֤ȯ��˾(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '64', '������֤ȯ��˾(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '65', '����(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '66', '����(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '67', '����Ͷ�ʹ�˾(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '68', '����Ͷ�ʹ�˾(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '69', '���ʽ֤ȯͶ�ʻ���(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '70', '���ʽ֤ȯͶ�ʻ���(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '71', '����ʽ֤ȯͶ�ʻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '72', '����֤ȯͶ�ʻ���(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '73', '����֤ȯͶ�ʻ���(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '74', '�������˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '75', '�籣����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '76', '���չ�˾(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '77', '���չ�˾(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '78', '�������ڻ���(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '79', '�������ڻ���(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '85', '������ҵ(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '86', '������ҵ(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '87', '�ǹ�����ҵ(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '88', '�ǹ�����ҵ(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '89', '�������\������ҵ(����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '90', '�������\������ҵ(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '91', '�������\������ҵ(���пع�����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '92', '�������\������ҵ(���пعɷ�����)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '93', '���̶�����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '94', '��ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', '95', '���ŷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H1', '��ͨ�ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H2', '������ͨ�ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H3', '���޺ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXCLS', 'H4', '�Ƿ��˷Ǻϻ��ƴ�ҵͶ����ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '00', '��A�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '01', '��A�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '02', '��A���˻����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '03', '��A���������˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '04', '��B�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '05', '��B�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '06', '��ƷA���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '07', '��Ʒ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '08', '��������֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '09', '��������֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '10', '��ƷB���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '11', '��Ʒ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '12', '�ϻ���A���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE', '13', '�ϻ���B���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '00', 'A���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '01', '�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '02', 'B���˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE1', '03', '����֤ȯ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE2', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE2', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZACCT_EXTYPE2', '2', '��Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_DLE_TYPE', 'CD', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_DLE_TYPE', 'CX', '��ѯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_DLE_TYPE', 'WT', 'ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJDJ', '˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJJD', '˾���ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJLJ', '����ֺ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'DJXD', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'PGRG', '����Ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'QPSB', '����ѡ��Ȩ�걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'SGBG', '�չ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'TPJG', 'ͶƱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'TPSB', 'ͶƱ�걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'ZT01', '����ת�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZHK_TYPE', 'ZT03', 'ת�йܷ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '01', '��ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '02', '���ط���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '03', '��ҵ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '04', '���ŷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '05', '���ᷨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '09', '�����ǽ��ڻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '10', '֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '11', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '12', '����Ͷ�ʹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '13', '�������˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '14', '���չ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '19', '�������ڻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '21', '��ͨ�ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '22', '������ͨ�ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '23', '���޺ϻ���ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '24', '�Ƿ��˷Ǻϻ��ƴ�Ͷ��ҵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '25', '˽ļ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '31', '����һ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '32', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '33', '����֤ȯ��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '34', '�������˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '41', '�Ʋ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '51', '�й������ڻ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '61', '�������˾�ӹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '62', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '63', '֤ȯ��˾�ӹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '64', '�ڻ���˾�ӹ�˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '65', '��Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZORG_TYPE', 'QH', '�ڻ���˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJDJ', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJJD', '����ⶳ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJKT', '����ɷݿ������Ƶ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJLH', '�ֺ򶳽�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJLJ', '�ֺ򶳽���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'DJXD', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'FXFQ', '�¹��Ϲ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'TG11', '�����˻����˲��Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'ZQKZ', 'ծȯ���г�ת���걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'ZTTZ', 'ת�йܳ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DECLARE_CLS', 'ZTXS', '���۹ɼ�δ���йɷ�ת�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '00', '�ѽ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '01', 'ҵ�������Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '02', '֤ȯ�˻���֤�����벻ƥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '03', '�˻���Ч', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '04', '�ظ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '05', '���ղ�������������걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_DEAL_CODE', '06', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'GF', '���ϸ��˻��淶����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'QL', 'ʣ�಻�ϸ��˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'SY', 'ʣ�಻�ϸ��˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'TC', 'ȷ�������˻�ʱӦ�޳����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'WG', 'Υ�棨���ϸ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_DORMAT_TYPE', 'ZZ', '����ֹ�йܹ�ϵ�Ĳ��ϸ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_LIST_STATUS', '0', '��������������,�Ƿ���������ɷ����ʾ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_LIST_STATUS', 'N', '�ѵǼ�,�ݲ���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_TRUST_TYPE', 'CD', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_TRUST_TYPE', 'WT', '�걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '11', '��ݲ���Ӧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '12', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '13', '�����ϵ���淶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '14', '���ϲ��淶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '15', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '21', '��ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '22', '�ѹ淶Ϊ�ϸ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '31', '�ѹ淶Ϊ�ϸ��˻������볷���˻�����ţ��ָ�֤ȯ�˻�����״̬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '32', '���ܹ淶Ϊ�ϸ��˻������볷���������ƣ��Ա����֤ȯ������ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'SZ_UNQUALIFIED_TYPE', '33', '����ȯ�̹�̨����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_CLS', '0', '�ٹ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_CLS', '1', '����ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '0', '�ٹ�ҵ����� ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '1', '���⹦�ܸ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '2', '���ܸ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '3', '����ҵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '4', '�˻�ҵ�񸴺ˣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '5', '�˻�ҵ�񸴺ˣ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '6', '�˻�ҵ���ύ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '7', '�˻�ҵ���ύ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TASK_TYPE', '8', '�۹�ͨ����Ȩ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_RESIDENT_TYPE', '1', '��Ϊ�й�˰�վ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_RESIDENT_TYPE', '2', '��Ϊ�Ǿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_RESIDENT_TYPE', '3', '�����й�˰�վ���������������(����)˰�վ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_TYPE', '0', 'һ����˰��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_TYPE', '1', 'С��ģ��˰��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TAX_TYPE', '2', '����ֵ˰��˰��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TA_ORG_CLS', '0', '��ͨ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TA_ORG_CLS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TA_ORG_CLS', '3', '����˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '000', '��Ƶģ��1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '001', '��Ƶģ��2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '002', '��Ƶģ��3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '003', '��Ƶģ��4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TMPL_GRP', '004', '��Ƶģ��5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TOPACCT_STATUS', '0', 'δǩԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TOPACCT_STATUS', '1', '��ǩԼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '0', '��֤ͨȯ�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '1', '����֤ȯ�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '2', '�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '3', '�ع��ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '4', '�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '5', '��Ӫ�ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', '6', '��ծ�ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_CLS', 'A', '�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '0', '�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '1', '�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '2', '���������ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '3', '���������ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '4', '���˻����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '5', '���������ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '6', '��Ʒ��ͨ�˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '7', '��Ʒ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '8', '��Ʒ�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_EXCLS', '9', '�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '1', '��ʧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '3', '˾������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '5', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '6', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_TYPE', '0', '�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRDACCT_TYPE', '1', '�����ʻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRD_DATE_FLAG', '0', '�ǽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRD_DATE_FLAG', '1', '�ǽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TREG_STATUS', '0', 'δָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TREG_STATUS', '1', '����ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TREG_STATUS', '2', '��ָ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '0', 'δ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '1', '�ѷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '2', '����ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_STATUS_FJ', '3', '����ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_TYPE', 'C', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TRUST_TYPE', 'S', '�걨', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H01', 'Ȩ��Ǽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H05', '�����ұ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H06', 'ͶƱ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H07', '�ֽ��չ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H08', '�ɷ��չ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H09', '�ֽ�͹ɷ��չ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H10', '�ɷݷֲ�ϲ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H12', 'ͶƱ�鰸', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H13', '��������/ҪԼ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H14', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'TZLB', 'H15', '֤ȯע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '1', '��ݲ���Ӧ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '2', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '3', '�����ϵ���淶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '4', '���ϲ��淶', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '5', '���մ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '6', '�й������϶����ϸ񣨸�����֤ȯ��˾�걨ʱ�����ã�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_RES_CLS', '9', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_TRD_LIMT', '1', '��ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNQUALI_TRD_LIMT', '2', '������������ֹ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '0', '����ʱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '1', '�ǽ���ʱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '2', '�Ѿ�����������ˮ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'UNTRD_FLAG', '3', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '0', '�û�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '1', '�ʽ��˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '2', '�ſ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '4', '�ɶ�����/�ɶ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '5', '���֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '6', '�����˻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '7', '�ֻ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '8', 'QQ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', '9', 'TA�˺�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'A', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'B', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'C', 'Ӫҵִ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'D', '���E��ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'E', '�û��ǳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'F', '�ڻ��˺�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ID_CLS', 'G', 'һ��ͨ�˺�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '0', '���㷨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '1', '�ͻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '2', '����Ա', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '3', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_ROLE', '4', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_TYPE', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_TYPE', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USER_TYPE', '2', '��Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '0', '��¼/����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '1', '�ʽ�ҵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '2', '���ý���/��¼����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '3', '�����ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '4', '��Ʊ��Ȩ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '5', '��Ʊ��Ȩ�ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '6', 'OTC��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '7', 'OTC�ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', '8', '����֧������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'USE_SCOPE', 'W', '�����û�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VAL_TYPE', '0', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VAL_TYPE', '1', '�Ż�ȯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '1', '˽�ҳ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '3', '������ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VEHICLE', '4', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '000', '�ؼ����ϱ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '001', 'רҵͶ���߿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '002', '������ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '003', '��Ʊ��Ȩ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '004', '��Ʊ��Ȩ֪ʶ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '005', '��Ʊ�˻����������ˣ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '006', '��Ʊ�˻�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '007', '���ս�ʾ��־����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '008', '����ҵ�񿪻�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '010', 'רҵͶ����ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '011', '���߲��ϸ�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '100', '��С��ҵ˽ļծȨ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '101', '�ּ�����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '102', '���й�ƱȨ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '103', '��תϵͳȨ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '104', '�۹�ͨȨ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '105', 'ծȯ�ϸ�Ͷ����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '106', '��ҵ��Э�鿪ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '107', '˽ļ����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '108', '��Ʊ��Ѻ�ع�Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '109', 'ծȯרҵͶ����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '110', '����ծȯ���չܿ�Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '111', '���ȹɺϸ�Ͷ����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '112', '����ҵ��Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '113', '���������й�˾�ɷ�ת��Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '114', '������ͣ����ծȯ����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '115', '��ծԤ����Ͷ����Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '116', '�Ϻ����վ�ʾ�ɽ���Ȩ�޿�ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '117', '�ͻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '118', '�����˻�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '200', 'OTC�߷��ղ�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_CLS', '300', '˽ļ�����Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_FMT', '0', 'rmvb', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '1', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '2', '���δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_STATUS', '3', 'δ�ϴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '00', '��Ϣ��֪��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '10', '���վ�ʾ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '20', 'OTC�߷��ղ�Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIDEO_TYPE', '30', '˽ļ�����Ʒ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '1', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '2', '�Ἦ��ͣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '3', '��ֹ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '5', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_STATUS', '9', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_TYPE', 'A', '��ʯ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_TYPE', 'B', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_LVL_TYPE', 'C', '�ƽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SPEC_TYPE', '0', 'VIP������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SPEC_TYPE', '1', 'VIP������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '0', 'δ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '1', '�ѱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '2', '�ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VIP_SYNC_STATUS', '3', 'ʧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '1', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '2', '��ܷ�ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '3', '�ʽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '4', '�ʽ���;', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '5', 'ҵ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '6', 'ҵ��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '7', '�г�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '8', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', '9', 'ϯλ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'A', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'B', '֤ȯ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'C', 'TA��˾', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_ADDI', 'D', 'TA����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '0', '�Ǽǽ��㻮��ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '1', '������м��ʽ����ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '2', '��֤�����ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '3', '������ˮ����ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '4', '�ʽ��Ϣƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '5', '����������㻮��ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '6', 'Ӷ���ո�ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '7', '�ֹ�����ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '8', '�깺���ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', '9', '�Ϲ����ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_CLS', 'A', 'ETF�˲���ƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_TYPE', '0', 'ԭʼƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VOU_TYPE', '1', 'ϵͳƾ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '0', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '1', '��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '2', '˫�˼�֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_BIZ', '3', '�ֻ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_CHK_RESULT', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_CHK_RESULT', '1', 'ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_CHK_RESULT', '2', 'δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '01', '����֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '02', '��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '03', '����֤�鷢��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '04', '�����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '05', '���ս�ʾ��Ͷ���߽���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '06', '���ղ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '07', '������Ϣ¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '08', '������Ϣ¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '09', 'Ӱ���ϴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '10', '��Ƶ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '11', '���ϴ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '12', '���δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '13', '���ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '15', '���ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '16', '�ط�δͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '17', '�ط�ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '18', '֤ȯ�˻��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '19', 'ҵ�񸴺�ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '97', '���ٿ�������¼��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '98', '���ٿ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEB_PHASE', '99', 'ҵ���ѳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '1', '����һ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '2', '���ڶ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '3', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '4', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '5', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WEEK_DAYS', '6', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WITHORD_FLAG', '0', '��������ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WITHORD_FLAG', '1', '������ί��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_CLS', '0', '�Ϲ�Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_CLS', '1', '�Ϲ�Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_EXE_MODE', 'A', '��ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_EXE_MODE', 'B', '��Ľ��ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_EXE_MODE', 'E', 'ŷʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_SETT_MODE', 'C', '�ֽ������ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'WRNT_SETT_MODE', 'S', '֤ȯ������ʽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YES_NO', '0', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YES_NO', '1', '��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YMT_STATUS', '0', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YMT_STATUS', '1', 'ע��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YOUNG_FLAG', '0', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YOUNG_FLAG', '1', 'δ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YWLB', '1', '���֤����Ҫ��λ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YWLB', '2', '�貹����֯��������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'YWLB', '3', '���޸�֤������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '01', '�������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '02', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '04', '��ᱣ�Ϻ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '05', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '07', '�۰ľ��������ڵ�ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '08', '̨�����������½ͨ��֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '09', '��������þ���֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0A', '��۾������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0B', '���ž������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0C', '���ڱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0D', '��ְ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '0E', '����֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '10', 'Ӫҵִ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '11', '�Ǽ�֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '12', '��֯��������֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '13', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ID_TYPE', '99', '����֤��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '0', '��������ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '1', 'Ȩ�����:1', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '2', 'Ȩ�����:2', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '3', 'Ȩ�����:3', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '4', 'Ȩ�����:4', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '5', 'Ȩ�����:5', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '6', 'Ȩ�����:6', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '7', 'Ȩ�����:7', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '8', 'Ȩ�����:8', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', '9', 'Ȩ�����:9', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'A', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'B', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'C', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'F', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'J', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'N', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'Q', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_LTLX', 'Z', '���ۻ����ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'DF', '�Ҹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'DX', '��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'HL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'P ', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'S ', '�͹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_QYLB', 'Z ', 'ת��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '001', '���ᣨ��Ȩ�����޵Ǽǣ�֤ȯ��ϸ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '002', '������֤ȯ��ϸ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '005', '���г�ת�Ǽǹ�����ϸ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '006', '�����˵Ǽ�֤ȯ�ɷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '007', '֤ȯ�˻���Ѻȯ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '008', '֤ȯ�˻���׼ȯ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '009', 'ѯ����������Ȩ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '010', 'Ȩ�����޵Ǽ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_SJLX', '012', '��ǰ��Ч����Ѻ����ϸ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H01', '�۹�ͨȨ��Ǽ�֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H05', '�۹�ͨ�����ұ���֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H06', '�۹�ͨͶƱ����֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H07', '�۹�ͨ�ֽ��չ�֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H08', '�۹�ͨ�ɷ��չ�֪ͨ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H09', '�۹�ͨ�ֽ�͹ɷ��չ�֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H10', '�ɷݷֲ�ϲ�֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H12', '�۹�ͨͶƱ�鰸֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H13', '�۹�ͨ��������֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_TZLB', 'H14', '�۹�ͨ����֪ͨ��Ϣ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'GF', '���з��˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'GJ', '���ҹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'GZ', '�̶�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'JJ', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'JN', '���ڷ��˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'JW', '���ⷨ�˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PG', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PS', '���۹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PT', '��������ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'PZ', 'Ȩ֤', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'SF', '��ᷨ�˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'XL', '������ͨ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'YX', '���ȷ��˹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'ZD_ZQLB', 'ZG', 'ְ����', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '00', '������ȯ����ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '01', 'Э���༤��ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '02', '�����༤��ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_BUSINESS_TYPE', '99', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_WAY', '0', '�绰�ط�', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'VISIT_WAY', '1', '�ʼ��ط�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'VISIT_WAY', '2', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKMAN_FLAG', '0', '��ͨ��ϵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKMAN_FLAG', '1', '������ȯ��ϵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'LINKMAN_FLAG', '2', '��ҵ����ϵ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AD', '������', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AE', '������', '0'
 GO
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AF', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AG', '����ϺͰͲ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AI', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AL', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AM', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AO', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AQ', '�ϼ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AR', '����͢', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AS', '������Ħ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AT', '�µ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AU', '�Ĵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AW', '��³��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AX', '����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'AZ', '�����ݽ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BA', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BB', '�ͰͶ�˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BD', '�ϼ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BE', '����ʱ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BF', '�����ɷ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BG', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BH', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BI', '��¡��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BJ', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BL', 'ʥ��̩���׵�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BM', '��Ľ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BN', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BO', '����ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BQ', '�������ձ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BR', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BS', '�͹���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BT', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BV', '��Τ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BW', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BY', '�׶���˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'BZ', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CA', '���ô�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CC', '�ƿ�˹Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CD', '�չ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CF', '�з�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CG', '�չ�(��)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CH', '��ʿ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CI', '���ص���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CK', '���Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CM', '����¡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CN', '�й�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CO', '���ױ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CR', '��˹�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CU', '�Ű�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CV', '��ý�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CX', 'ʥ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CY', '����·˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'CZ', '�ݿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DE', '�¹�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DJ', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DK', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DM', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DO', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'DZ', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EC', '��϶��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EE', '��ɳ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EG', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'EH', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ER', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ES', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ET', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FI', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FJ', '쳼�Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FK', '���ά��˹Ⱥ��(������)', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FM', '�ܿ�������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FO', '����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'FR', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GA', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GB', 'Ӣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GD', '�����ɴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GE', '��³����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GF', '����������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GG', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GH', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GI', 'ֱ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GL', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GM', '�Ա���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GN', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GP', '�ϵ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GQ', '���������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GR', 'ϣ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GS', '�������ǵ�����ɣ����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GT', 'Σ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GU', '�ص�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GW', '�����Ǳ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'GY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HK', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HM', '�յµ����������Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HN', '�鶼��˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HR', '���޵���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HT', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'HU', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ID', 'ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IE', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IL', '��ɫ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IM', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IN', 'ӡ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IO', 'Ӣ��ӡ�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IQ', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IR', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IS', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'IT', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JE', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JM', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JO', 'Լ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'JP', '�ձ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KE', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KG', '������˹˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KH', '����կ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KI', '�����˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KM', '��Ħ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KN', 'ʥ���ĺ���ά˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KP', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KR', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KW', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KY', '����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'KZ', '������˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LA', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LB', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LC', 'ʥ¬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LI', '��֧��ʿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LK', '˹������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LR', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LS', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LT', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LU', '¬ɭ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LV', '����ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'LY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MA', 'Ħ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MC', 'Ħ�ɸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MD', 'Ħ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ME', '��ɽ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MF', '����ʥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MG', '����˹��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MH', '���ܶ�Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MK', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ML', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MM', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MN', '�ɹ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MO', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MP', '����������Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MQ', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MR', 'ë��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MS', '�������ص�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MT', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MU', 'ë����˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MV', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MW', '����ά', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MX', 'ī����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MY', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'MZ', 'Īɣ�ȿ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NA', '���ױ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NC', '�¿��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NE', '���ն�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NF', 'ŵ���˵�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NG', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NI', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NO', 'Ų��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NP', '�Ჴ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NR', '�³', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NU', 'Ŧ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'NZ', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'OM', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PA', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PE', '��³', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PF', '��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PG', '�Ͳ����¼�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PH', '���ɱ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PK', '�ͻ�˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PL', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PM', 'ʥƤ�������ܿ�¡', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PN', 'Ƥ�ؿ���Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PR', '�������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PS', '����˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PT', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PW', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'PY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'QA', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RE', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RO', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RS', '����ά��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RU', '����˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'RW', '¬����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SA', 'ɳ�ذ�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SB', '������Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SC', '�����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SD', '�յ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SE', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SG', '�¼���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SH', 'ʥ������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SI', '˹��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SJ', '˹�߶���Ⱥ���������ӵ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SK', '˹�工��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SL', '��������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SM', 'ʥ����ŵ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SN', '���ڼӶ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SO', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SR', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SS', '���յ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ST', 'ʥ��������������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SV', '�����߶�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'SZ', '˹��ʿ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TC', '�ؿ�˹�Ϳ���˹Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TD', 'է��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TF', '�����ϲ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TG', '���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TH', '̩��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TJ', '������˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TK', '�п���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TL', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TM', '������˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TN', 'ͻ��˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TO', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TR', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TT', '�������Ͷ�͸�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TV', 'ͼ��¬', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TW', '̨��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'TZ', '̹ɣ����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UA', '�ڿ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UG', '�ڸɴ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UM', '����������С����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'US', '����', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UY', '������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'UZ', '���ȱ��˹̹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VA', '��ٸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VC', 'ʥ��ɭ�غ͸����ɶ�˹', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VE', 'ί������', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VG', 'Ӣ��ά����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VI', '����ά����Ⱥ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VN', 'Խ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'VU', '��Ŭ��ͼ', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'WF', '����˹�͸�ͼ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'WS', '��Ħ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'YE', 'Ҳ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'YT', '��Լ��', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ZA', '�Ϸ�', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ZM', '�ޱ���', '0'
 GO 
EXEC nb_add_SYS_DD_ITEM 'CITIZENSHIP_ST', 'ZW', '��Ͳ�Τ', '0'
 GO 