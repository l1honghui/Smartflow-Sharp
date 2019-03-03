--如果与当前数据库的关键字有冲突，请自行调整
USE bussiness
GO
SET IDENTITY_INSERT T_ROLE ON 
INSERT INTO T_ROLE(Identification,Appellation)VALUES(1,'系统管理员')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(2,'小组长')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(3,'总经理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(4,'部门经理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(5,'部门助理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(6,'总经理秘书')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(7,'项目经理')
INSERT INTO T_ROLE(Identification,Appellation)VALUES(8,'市场部经理')
SET IDENTITY_INSERT T_ROLE OFF 

--T_UMR
INSERT INTO T_UMR(RID,UUID)VALUES(1,1)
INSERT INTO T_UMR(RID,UUID)VALUES(1,2)
INSERT INTO T_UMR(RID,UUID)VALUES(1,3)
INSERT INTO T_UMR(RID,UUID)VALUES(2,4)
INSERT INTO T_UMR(RID,UUID)VALUES(2,8)
INSERT INTO T_UMR(RID,UUID)VALUES(3,1)
INSERT INTO T_UMR(RID,UUID)VALUES(4,2)
INSERT INTO T_UMR(RID,UUID)VALUES(4,5)
INSERT INTO T_UMR(RID,UUID)VALUES(5,7)
INSERT INTO T_UMR(RID,UUID)VALUES(6,6)
INSERT INTO T_UMR(RID,UUID)VALUES(7,3)
INSERT INTO T_UMR(RID,UUID)VALUES(7,8)
INSERT INTO T_UMR(RID,UUID)VALUES(8,4)


--T_ORG
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('组织机构','000','0','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('网络研发部','001','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('市场部','002','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('综合管理部','003','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('后勤保障门','004','000','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('网络研发一组','001001','001','')
INSERT INTO T_ORG(ORGNAME,ORGCODE,PARENTCODE,DESCRIPTION)VALUES('网络研发二组','001002','001','')

INSERT [dbo].[T_STRUCTURE] ([IDENTIFICATION], [APPELLATION], [STRUCTUREXML]) VALUES (newid(), N'简单流程', N'<workflow><start id="30" name="开始" layout="113 120 12 18"><transition name="提交部门助审批" destination="32" layout="203 52 203 113"></transition></start><end id="31" name="结束" layout="113 120 300 18"></end><node id="32" name="部门助理" layout="113 120 113 18"><group id="5" name="部门助理"/><transition name="提交部门经理审批" destination="33"  layout="203 153 203 218"></transition></node><node id="33" name="部门经理" layout="113 120 218 18"><group id="4" name="部门经理"/><transition name="结束" destination="31" layout="203 258 203 300"></transition></node></workflow>')