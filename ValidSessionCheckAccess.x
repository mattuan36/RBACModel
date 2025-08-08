--- Create Users 
!create u1:User
!set u1.UserId := 'Rob'

!create r1:Role
!set r1.name := 'Clerk'

!create r2:Role
!set r2.name := 'Manager'

!create r3:Role
!set r3.name := 'Auditor'

!create s1:Session

--- Assign Roles

!insert (u1, r1) into UserAssignment
!insert (u1, r2) into UserAssignment
!insert (u1, s1) into UserSessions

!insert (r2, r3) into SSD


!insert (s1, r1) into SessionRoles

!create o1:Object
!create op1:Operation


!create p1:Permission
!insert (r1, p1) into PermAssignment
!insert (p1, o1) into PermObjects
!insert (p1, op1) into PermOperations
!insert (o1, op1) into ExecuteOn
