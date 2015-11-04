library("networkD3")

# Affiliated disciplines
MappingDisciplines <- list(name = "Mapping",
                           children = list(list(name = "Theatre",
                                                children = list(list(name = "Theatre"))),
                                           list(name = "Speech, Language, Hearing Science",
                                                children = list(list(name = "Anatomy & Physiology"))),
                                           list(name = "Classics",
                                                children = list(list(name = "Roots of English"))),
                                           list(name = "Music",
                                                children = list(list(name = "Music"))),
                                           list(name = "English",
                                                children = list(list(name = "Narrative"),
                                                                list(name = "Writing"),
                                                                list(name = "Composition"))),
                                           list(name = "Criminal Justice",
                                                children = list(list(name = "Research Methods"),
                                                                list(name = "Databases"))),
                                           list(name = "Art History",
                                                children = list(list(name = "Art History"))),
                                           list(name = "Urban Education",
                                                children = list(list(name = "College & Careers"),
                                                                list(name = "Online Teaching"),
                                                                list(name = "Chemistry")))
                                           
                           ))


#Tree Network
treeNetwork(List = MappingDisciplines, width = 1000, height = NULL,
            fontSize=NULL, linkColour="#0080a5", nodeColour="#0080a5", 
            nodeStroke="#fec95f", textColour="#0080a5", opacity=0.9, margin=0)