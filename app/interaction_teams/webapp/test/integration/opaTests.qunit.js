sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'interactionteams/test/integration/FirstJourney',
		'interactionteams/test/integration/pages/GroupsList',
		'interactionteams/test/integration/pages/GroupsObjectPage',
		'interactionteams/test/integration/pages/TeamsObjectPage'
    ],
    function(JourneyRunner, opaJourney, GroupsList, GroupsObjectPage, TeamsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('interactionteams') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheGroupsList: GroupsList,
					onTheGroupsObjectPage: GroupsObjectPage,
					onTheTeamsObjectPage: TeamsObjectPage
                }
            },
            opaJourney.run
        );
    }
);