import SwiftUI
import Foundation


struct Option: Identifiable {
    let id = UUID()
    let answer: String
    let isCorrect: Bool
}

struct Question {
    let question: String
    let options: [Option]
}

class QuestionStorage: ObservableObject {
    @Published var questionList: [Question] = [
        Question(
            question: "Sie wollen ein Benutzerkonto für Andrea Bayer von der Kommandozeile aus erstellen. Das Konto soll Mitglied der Techniker-Gruppe im Mannheim-Container sein. Es soll nach der Erstellung deativiert sein, sein Kennwort soll Sicherheit lauten und es soll sich im Container ou=Benutzer,ou=Mannheim,dc=beispiel,dc=local befinden. Welche der folgenden Tools bzw Kombination von Tools können dies bewerkstelligen?",
            options: [
                Option(answer: "Net User,gefolgt von dsmove", isCorrect: false),
                Option(answer: "ldifde, gefolgt von dsmod", isCorrect: true),
                Option(answer: "dsadd", isCorrect: true),
                Option(answer: "csvde,gefolgt von dsmove", isCorrect: false),
                Option(answer: "dsquery,gefolgt von dsmod", isCorrect: false)
            ]
        ),
        Question(
            question: "Ein Vorgesetzter sagt Ihnen, dass  einer seiner Mitarbeiter zu einer Konkurenzfirma gewechselt hat. Er will sichergehen, dass der Mitarbeiter keinen Zugriff mehr auf seinen Computer oder die Dateien auf dem Dateiserver hat. Was wäre das beste Vorgehen?",
            options: [
                Option(answer: "Benutzkonto löschen", isCorrect: false),
                Option(answer: "Benutzerkonto in Ehemaliger Mitarbeiter umbennenen", isCorrect: false),
                Option(answer: "Option Konto ist deaktiviert auswählen", isCorrect: true),
                Option(answer: "Wert im Feld Konto läuft ab abändern", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie planen den Ressourcenzugirff in einer Gesamtstruktur mit mehrenen Domänen. Bestimmte Benutzer in allen Domänen brauchen Zugriff auf die drei kontinentalen Hauptdomänen. Was ist die empfohlene Strategie, um diesen Ressourcenzugriff zu ermöglichen?",
            options: [
                Option(answer: "Benutzer -> universale Gruppe -> globale Gruppen -> lokale Domänengruppen -> Ressourcenberechtigung", isCorrect: false),
                Option(answer: "Benutzer -> globale Gruppen -> universale Gruppen -> lokale Domänengruppen -> Ressourcenberechtigung", isCorrect: true),
                Option(answer: "Benutzer -> lokale Domänengruppen -> universale Gruppen -> globale Gruppen -> Ressourcenberechtigung", isCorrect: false),
                Option(answer: "Benutzer -> universale Gruppen -> Ressourcenberechtigung", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie müssen Ihren Vorgesetzten erklären, was Profile sind. Ihnen wird bewusst, dass Sie Ihre Präsentation mit einer Definition der drei Profiltypen beginnen müssen. Wählen Sie die drei Profiltypen aus.",
            options: [
                Option(answer: "Active Directory-Benutzerprofil", isCorrect: false),
                Option(answer: "Lokales Benutzerprofil", isCorrect: true),
                Option(answer: "Gruppenprofil", isCorrect: false),
                Option(answer: "Gruppenrichtilinienprofil", isCorrect: false),
                Option(answer: "Servergespeichertes Benutzerprofil", isCorrect: true),
                Option(answer: "Verbindliches Benutzerprofil", isCorrect: true)
            ]
        ),
        Question(
            question: "Sie sind Administrator eines kleinen Unternehmens, das Callcenter-Dienste für andere Firmen anbietet. Eine Mitarbeiterin ruft Sie an und beschwert sich, dass das Foto ihres Enkels, das sie als Desktop-Hintergrund festgelegt hat, bei der Anmeldung heute morgen verschwunden war. Was ist die wahrscheinlichste Ursache des Problems?",
            options: [
                Option(answer: "Ihr Benutzerprofil ist beschädigt", isCorrect: false),
                Option(answer: "Sie hat sich am falschen Computer angemeldet", isCorrect: false),
                Option(answer: "Sie hat sich lokal angemeldet", isCorrect: false),
                Option(answer: "Ihr wurde ein verbindliches Profil zugewiesen", isCorrect: true)
            ]
        ),
        Question(
            question: "Aus betriebwirtschaftlichen Gründen musste Ihre Firma 200 Mitarbeiter entlassen. Die Personalabteilung hat Ihnen die Liste der Namen als Textdatei übermittelt. Mit welchem Kommando könnte man diese Benutzerkonten löschen.",
            options: [
                Option(answer: "dsmod", isCorrect: false),
                Option(answer: "dsadd delete", isCorrect: false),
                Option(answer: "csvde", isCorrect: false),
                Option(answer: "dsrm", isCorrect: true)
            ]
        ),
        Question(
            question: "Ihr Unternehmen hat unglängst eine kleine Firma übernommen. Diese andere Firma setzt ein LDAP-kompatibles Verzeichnis unter UNIX ein. Sie sollen nun Benutzerkonten in Active Directory für die Mitarbeiter dieser Firma anlegen. Welches Tool ist am besten für diese Aufgabe geeignet?",
            options: [
                Option(answer: "dsmod", isCorrect: false),
                Option(answer: "ldifde", isCorrect: true),
                Option(answer: "csvde", isCorrect: false),
                Option(answer: "dsrm", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie sind Administrator einer kleinen Universität. In solchen Umgebungen ist es üblich, dass gelangweilte Studenten jede Nacht zwischen 22 Uht und 2 Uhr morgens versuchen, dass System zu hacken. Mit welchen beiden Maßnahmen schützen Sie sich vor Wörterbuchangriffen und stellen sicher, dass sich Ihre Benutzer um 8 Uhr morgens anmelden können?",
            options: [
                Option(answer: "Kontosperrungsschwelle auf 0 setzen", isCorrect: false),
                Option(answer: "Kontosperrdauer auf 60 setzen", isCorrect: true),
                Option(answer: "Kontosperrdauer auf 0 setzen", isCorrect: false),
                Option(answer: "Kontosperrungsschwelle auf 3 setzen", isCorrect: true)
            ]
        ),
        Question(
            question: "Sie sind Administrator eines kleinen Unternehmens, das Callcenter-Dienste für andere Firmen anbietet. Eine Mitarbeiterin ruft Sie an und beschwert sich, dass sie keinerlei Dateien in Eigene Datein findet. Bis gestern war alles noch in Ordnung. Gruppenrichtlinien werden nicht verwendet. Was ist die wahrscheinlichste Ursache des Problems?",
            options: [
                Option(answer: "ihr Benutzerprofil ist beschädigt", isCorrect: false),
                Option(answer: "Sie hat sich am falschen Computer angemeldet", isCorrect: true),
                Option(answer: "Sie hat sich lokal angemeldet", isCorrect: false),
                Option(answer: "Ihr wurde ein verbindliches Profil zugewiesen", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie sind ein untergeordneter Administrator einer großen Entwicklungsfirma mit etlichen Niederlassungen. Sie haben in einem Magazin gelesen, dass die beste Methode zur Zuweisung von Ressourcen in einer Umgebung mit mehreren Domänen die folgende ist: Man weißt einer lokalen Domänengruppe Berechtigungen zu, dann nimmt man die globalen Gruppen in die lokale Domänengruppe auf und nimmt schließlich die globalen Gruppen  in eine universale Gruppe auf. Doch der Server erlaubt Ihnen nicht, universale Gruppen einzurichten. Was ist der wahrscheinlichste Grund dafür?",
            options: [
                Option(answer: "Ihnen fehlendie entsprechenden Rechte", isCorrect: false),
                Option(answer: "Die Domänenfunktionsebene ist Windows 2000 gemischt", isCorrect: true),
                Option(answer: "Die Domänenfunktionsebene ist Windows 2000 pur", isCorrect: false),
                Option(answer: "Die Domänenfunktionsebene ist nicht Windows 2003 pur", isCorrect: false)
            ]
        ),
        Question(
            question: "Sie sind Administrator einer kleinen Firma in Familienbesitz. Aufgrund der Firmengröße war es schwierig, den Mitarbeitern die Bedeutung von Sicherheit nahe zu bringen. Sie wollen die Kennwortrichlinie ändern, sodass Benutzer ihre Kennwörter alle 30 Tage ändern müssen und ein Kennwort zwei Jahre lang nicht erneut verwenden können. Welche der folgenden Optionen sind dazu geeignet?",
            options: [
                Option(answer: "Setzen Sie die Kennwortchronik auf 730 auf das maximale Kennwortalter auf 30", isCorrect: false),
                Option(answer: "Setzen Sie die Kennwortchronik auf 365 auf das maximale Kennwortalter auf 30", isCorrect: false),
                Option(answer: "Setzen Sie die Kennwortchronik auf 25 auf das maximale Kennwortalter auf 28", isCorrect: false),
                Option(answer: "Setzen Sie die Kennwortchronik auf 24 auf das maximale Kennwortalter auf 30", isCorrect: true)
            ]
        ),
        Question(
            question: "Ein Mitglied der Geschäftsleitung sagt Ihnen, seine Assistentin habe die Firma verlassen. Die Vorgesetzte möchte nun, dass die Nachfolgerin Zugriff auf den Rechner der Vorgängerin und deren Dateien auf dem Dateiserver hat. Wie gehen Sie am besten vor?",
            options: [
                Option(answer: "Erstellen Sie ein neues Benutzerkonto für die Nachfolgerin und geben Sie ihr Zugriff auf die gewünschten Dateien", isCorrect: false),
                Option(answer: "Bennenen Sie das alte Benutzerkonto für die neue Benutzerin um", isCorrect: true),
                Option(answer: "Erstellen Sie ein neues Benutzerkonto für die Nachfolgerin und kopiert Sie die gewünschten Dateien in ihrem Basisordner", isCorrect: false),
                Option(answer: "Sagen Sie der neuen Mitarbeiterin die Benutzererkennung und das Kennwort der ehermaligen Mitarbeiterin", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following Windows Server 2003 Active Directory user account names is the User Principal Name (UPN)? (Choose the best answer)",
            options: [
                Option(answer: "examcram.corp/music/elton.john", isCorrect: false),
                Option(answer: "elton.john.plays.piano.music", isCorrect: false),
                Option(answer: "elton.john@examcram.corp", isCorrect: true),
                Option(answer: "CN=elton.john", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following Active Directory object names can exist within the same forest (examcram.corp) at the same time? (Choose the best answer)",
            options: [
                Option(answer: "CN=DanB stored within the OU named Sales", isCorrect: false),
                Option(answer: "CN=DanB stored within the OU named Marketing", isCorrect: false),
                Option(answer: "CN=DanB,ou=mgmt,dc=examcram,dc=corp", isCorrect: false),
                Option(answer: "examcram.corp/music/DanB", isCorrect: false),
                Option(answer: "None of these", isCorrect: false),
                Option(answer: "All of these", isCorrect: true)
            ]
        ),
        Question(
            question: "What is a suer account's Canonical Name if the LDAP Distingished Name is CN=dan.balter,ou=sales,ou=west,dc=infotech,dc=corp? (Choose the best answer)",
            options: [
                Option(answer: "CN=dan.balter", isCorrect: false),
                Option(answer: "dan.balter@infotech.corp/west/sales", isCorrect: false),
                Option(answer: "infotech.corp\\dan.balter", isCorrect: false),
                Option(answer: "infotech.corp/west/sales/dan.balter", isCorrect: true),
                Option(answer: "infotech.corp/sales/west/dan.balter", isCorrect: false),
                Option(answer: "dan.balter/sales/west/infotech.corp", isCorrect: false),
            ]
        ),
        Question(
            question: "For which of the following user account properties tabs does every property get copied when you create a new user account from a user account template? (Choose the best answer)",
            options: [
                Option(answer: "Organization", isCorrect: false),
                Option(answer: "Account", isCorrect: false),
                Option(answer: "Member of", isCorrect: true),
                Option(answer: "Address", isCorrect: false),
                Option(answer: "Profile", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following statements about object queries in the ADUC console is not correct? (Choose the best answer)",
            options: [
                Option(answer: "Query definition can be imported", isCorrect: false),
                Option(answer: "Query definition can be exported", isCorrect: false),
                Option(answer: "You can create folders and subfolders within the Saved Queries container", isCorrect: false),
                Option(answer: "You can select the Active Directory container that you would like to search", isCorrect: false),
                Option(answer: "You can save query definitions as HTML files", isCorrect: true),
                Option(answer: "You can choose not to search subcontainers", isCorrect: false)
            ]
        ),
        Question(
            question: "Where is the Group Policy setting Interactive Logon: Number of Previous Logons to Cache (in Case Domain Controller Is Not Available) located within the Default Domain Security Settings console and what is this setting's default value? (Choose the best answer)",
            options: [
                Option(answer: "It's located under Security Settings\\Local Poicies\\Security Options, and its default value is 50", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\Security Options, and its default value is 5", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\User Rights Assignment, and its default value is 10", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\User Rights Assignment, and its default value is 50", isCorrect: false),
                Option(answer: "It's located under Security Settings\\Local Poicies\\Security Options, and its default value is 10", isCorrect: true)
            ]
        ),
        Question(
            question: "How can you perfom a bulk import of users into Active Directory to create many user accounts at one time?",
            options: [
                Option(answer: "Use the dsadd.exe command", isCorrect: false),
                Option(answer: "Use the ADUC console", isCorrect: false),
                Option(answer: "Use the net user command", isCorrect: false),
                Option(answer: "Use the csvde.exe command", isCorrect: true),
                Option(answer: "Use the dsmod.exe command", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following requirements do not apply to the default domain security policy setting Passowrd Must Meet Complexity Requirements for Active Directory user accounts under Windows Server 2003? (Choose two)",
            options: [
                Option(answer: "Passwords must contain at least seven characters", isCorrect: true),
                Option(answer: "Passwords cannot contain all or part of the user's account name", isCorrect: false),
                Option(answer: "Passwords must contain some nonalphanumeric characters such as %,$,#,!,+ and &", isCorrect: true),
                Option(answer: "Passwords may contain numerals 0 through 9", isCorrect: false),
                Option(answer: "Passwords may contain English lowercase letters a through z", isCorrect: false),
                Option(answer: "Passwords may contain English uppercase letters A through Z", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following command-line commands can you use to rename an object within Active Directory",
            options: [
                Option(answer: "dsadd", isCorrect: false),
                Option(answer: "dsquery", isCorrect: false),
                Option(answer: "dsmove", isCorrect: true),
                Option(answer: "dsrm", isCorrect: false),
                Option(answer: "dsget", isCorrect: false),
                Option(answer: "net user", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following user passwords is acceptable based on the default settings in Active Directory for a user with the logon name of Dan?",
            options: [
                Option(answer: "dan$456", isCorrect: false),
                Option(answer: "zM!993", isCorrect: false),
                Option(answer: "33#abcd", isCorrect: true),
                Option(answer: "ttrrr789021", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following methods can you use to create computer accounts in Active Directory under Windows Server 2003?(Choose three)",
            options: [
                Option(answer: "Log on to a domain from a Windows 98 computer", isCorrect: false),
                Option(answer: "Join a domain from a Windows NT 4.0 computer", isCorrect: true),
                Option(answer: "Prestage a computer account from ADUC console", isCorrect: true),
                Option(answer: "Prestage a computer account using dsget computer command", isCorrect: false),
                Option(answer: "Prestage a computer account using the dsadd computer command", isCorrect: true),
                Option(answer: "Join a domain from a Windows 95 computer with the Active Directory client software installed", isCorrect: false)
            ]
        ),
        Question(
            question: "As an Administrator for the ExamCram.corp domain, how can you run the Active Directory Users and Computers MMC snap-in? (Choose two)",
            options: [
                Option(answer: "Double-click the file dsa.mmc in the %systemroot%system32 folder from Windows Explorer", isCorrect: false),
                Option(answer: "Click Start, Run, type aduc.msc, and click OK", isCorrect: false),
                Option(answer: "Double-click the file dsa.msc in the %systemroot%system32 folder from Windows Explorer", isCorrect: true),
                Option(answer: "Double-click the file aduc.msc in the %systemroot%system32 folder from Windows Explorer", isCorrect: false),
                Option(answer: "Click Start, Run, type mmc, and click OK. Click File, Add/Remove Snap-in, select Active Directory Users and Computers from the list of available snap-ins, click Add, and then click OK", isCorrect: false)
            ]
        ),
        Question(
            question: "What happens if you attempt to run an application program using the Run option as a different user than the user who is currently logged on, but you type in an incorrect user name or password? (Choose the best answer)",
            options: [
                Option(answer: "The program runs using the security credentials of the currently logged-on user", isCorrect: false),
                Option(answer: "You see logon failure error message box appear on the screen", isCorrect: true),
                Option(answer: "The Run As option gives you three more chances to type in the correct password before it logs off the current user", isCorrect: false),
                Option(answer: "At the Run As dialog box, you must type in the correct username and password for the currently logged-on user if you want to run the program after entering an incorrect username or password", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following commands can perform bulk imports and exports into and out of Active Directory using a file format that is compatible with the Lightweight Directory Access Protocol?",
            options: [
                Option(answer: "The dsquery.exe command", isCorrect: false),
                Option(answer: "The dsrm.exe command", isCorrect: false),
                Option(answer: "The net user command", isCorrect: false),
                Option(answer: "The ldifde.exe command", isCorrect: true),
                Option(answer: "The notepad.exe utility", isCorrect: false)
            ]
        ),
        Question(
            question: "You install Active Directory on a server. You want it to be a seperate domain that is part of an existing forest but containing a namespave seperate from the forest where you are installing it. What is this type of domain called?",
            options: [
                Option(answer: "A replica", isCorrect: false),
                Option(answer: "A child domain", isCorrect: false),
                Option(answer: "A forest root", isCorrect: false),
                Option(answer: "A tree root", isCorrect: true)
            ]
        ),
        Question(
            question: "You are installing Active Directory on a new domain controller and selecting options for placing the database and log files. Which of the following options would produce the optimum performance of these files? (Each answer represents part of the solution. Choose two)",
            options: [
                Option(answer: "Placing them on the same NTFS partition", isCorrect: false),
                Option(answer: "Ensuring plenty of hard disk space for these files to expand", isCorrect: true),
                Option(answer: "Placing them on NTFS partitions located on seperate physical disks", isCorrect: true),
                Option(answer: "Restricting them to small partitions to control their size", isCorrect: false)
            ]
        ),
        Question(
            question: "Which of the following is the most appropriate scenario where you would want to install a read-only domain controller?",
            options: [
                Option(answer: "In a branch office where physical security might be less than optimum", isCorrect: true),
                Option(answer: "In the head office near the receptionist's desk", isCorrect: false),
                Option(answer: "In the server room where the forest root domain is located and you need an optimum location for the schema master and domain naming master", isCorrect: false),
                Option(answer: "In a branch office server room where you need to place the infrastructure master, RID master, and PDC emulator close to clients requiring their services", isCorrect: false)
            ]
        ),
        Question(
            question: "Peter is a network administrator for a company that operates an Active Directory forest consisting of two domains in separate trees. The company has offices in Chicago and Rome, which are connected by a 236kbps WAN link. Each office is represented by a separate Active Directory site as well as its own domain. Peter's company stores resource location data in Active Directory so that users can perform searches to locate the appropriate resources on their client computers, which run either Windows XP Professional or Windows Vista Business. However, users in the Rome office report that search times for resources are unacceptably slow. Which of the following should Peter do to improve search times at the Rome office?",
            options: [
                Option(answer: "Enable universal group caching at the Rome office.", isCorrect: false),
                Option(answer: "Configure a global catalog server at the Rome office", isCorrect: true),
                Option(answer: "Configure a domain controller for the Chicago domain in the Rome office.", isCorrect: false),
                Option(answer: "Configure a domain controller for the Rome domain in the Chicago office.", isCorrect: false)
            ]
        ),
        Question(
            question: "Sharon is the IT manager of a community college whose administrative staff is planning the college's new Windows Server 2016 domain infrastructure. Ten domain controllers will be located in various campus buildings. The college's administrators and technical support staff are to be based in an annex to the computer sciences department that would include a powerful server acting as the forest root domain controller. The administrative staff presented Sharon with a proposal that this server would incorporate the roles of global catalog server, schema master, domain naming master, and infrastructure master. Servers in other buildings would take on the other operations master roles. After studying the proposal carefully, Sharon asks the administrative staff to modify the operations master setup. Which of the following should the staff change? ",
            options: [
                Option(answer: "The college's computer help center, which is staffed by students who work parttime shifts and is located in the student union building, needs frequent access to the infrastructure master. The administrative staff should locate this role there.", isCorrect: false),
                Option(answer: "The infrastructure master does not need to be located close to the IT staff. A more sensible change would be for the administrative staff to move this role elsewhere and have the PDC emulator located close to the support staff.", isCorrect: false),
                Option(answer: "The schema master and domain naming master roles cannot function properly if they are hosted by the same computer.", isCorrect: false),
                Option(answer: "The global catalog server and infrastructure master roles cannot function properly if they are hosted by the same computer.", isCorrect: true)
            ]
        ),
        Question(
            question: "Ryan has installed Windows Server 2016 on a new server using the Server Core option. He would like to install AD DS and promote the server to be a replica domain controller in his company's single domain network. What should he do?",
            options: [
                Option(answer: "Run Server Manager from the command prompt and select the AD DS role.", isCorrect: false),
                Option(answer: "Run Server Manager from the command prompt and select the dcpromo option", isCorrect: false),
                Option(answer: "Execute the dcpromo command from the command prompt and specify the appropriate answers when prompted.", isCorrect: false),
                Option(answer: "Execute the dcpromo command from the command prompt and specify an unattended answer file containing the required information", isCorrect: true)
            ]
        ),
        Question(
            question: "Which of the following are valid domain and forest functional levels for a Windows Server 2016 domain? (Choose all that apply.)",
            options: [
                Option(answer: "Windows 2000 mixed", isCorrect: false),
                Option(answer: "Windows 2000 native", isCorrect: false),
                Option(answer: "Windows Server 2003 mixed", isCorrect: false),
                Option(answer: "Windows Server 2003 native", isCorrect: true),
                Option(answer: "Windows Server 2008 native", isCorrect: true),
            ]
        ),
        Question(
            question: "Karen is the network administrator for a company that operates an Active Directory domain whose domain controllers run Windows Server 2003. The company wants to upgrade the domain controllers to Windows Server 2016. Karen's user account is  member of the Domain Admins, Enterprise Admins, and Schema Admins groups in her company's domain.Which of the following actions does Karen need to perform before upgrading any of the domain controllers to Windows Server 2016? To answer, select the two required actions from the list that follows in the sequence in which she must execute them.",
            options: [
                Option(answer: "Run the Adprep /domainprep command on the PDC emulator.", isCorrect: true),
                Option(answer: "Run the Adprep /forestprep command on the PDC emulator.", isCorrect: false),
                Option(answer: "Run the Adprep /domainprep command on the infrastructure master.", isCorrect: false),
                Option(answer: "Run the Adprep /forestprep command on the domain naming master.", isCorrect: false),
                Option(answer: "Run the Adprep /domainprep command on the schema master.", isCorrect: false),
                Option(answer: "Run the Adprep /forestprep command on the schema master.", isCorrect: true)
            ]
        ),
        Question(
            question: "Jason is a support technician who is creating user accounts for a series of new employees that your company has hired. After creating several dozen user accounts successfully, he suddenly receives an error message informing him that Active Directory cannot create the account. He comes to you for assistance.",
            options: [
                Option(answer: "Check the operational status of the infrastructure master.", isCorrect: false),
                Option(answer: "Check the operational status of the RID master.", isCorrect: false),
                Option(answer: "Check the operational status of the PDC emulator.", isCorrect: false),
                Option(answer: "Check the amount of disk space on the computer Jason is using.", isCorrect: false)
            ]
        )
    ]
}
