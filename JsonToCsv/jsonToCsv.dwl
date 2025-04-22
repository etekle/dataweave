%dw 2.0
output application/csv
fun mapping(node1, node2) = {Name:node1.Name, 
        Role:node1.Role, 
        Company:node1.Company, 
        Location:node1.Location,
        Skill:node2.Skill,
        SkillExp:node2.SkillExp,
        Course:node2.Course,
        CourseExp:node2.CourseExp}
 var load = flatten (payload2 map (  if ($.Skills is Array)
    $.Skills map ((item, index) ->mapping($,item) ) 
    else if ($.Courses is Array)
    $.Courses map ((item, index) -> mapping($,item) )
      else mapping($,null)))       
---
load map ((item, index) -> {"S.No":index + 1} ++ item)

/* csv

S.No,Name,Role,Company,Location,Skill,SkillExp,Course,CourseExp
1,Rajesh,SSE,Elevance,Banglore,HTML,2years,,
2,Rajesh,SSE,Elevance,Banglore,Java Script,3years,,
3,Rajesh,SSE,Elevance,Banglore,HTML,1years,,
4,Ravideep,SSE,Elevance,Banglore,,,Copado,1years
5,Ravideep,SSE,Elevance,Banglore,,,AutoRabit,2years
*/