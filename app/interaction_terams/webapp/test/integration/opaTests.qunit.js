sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'interactionterams/test/integration/FirstJourney',
		'interactionterams/test/integration/pages/GroupsList',
		'interactionterams/test/integration/pages/GroupsObjectPage',
		'interactionterams/test/integration/pages/TeamsObjectPage'
    ],
    function(JourneyRunner, opaJourney, GroupsList, GroupsObjectPage, TeamsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('interactionterams') + '/index.html'
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