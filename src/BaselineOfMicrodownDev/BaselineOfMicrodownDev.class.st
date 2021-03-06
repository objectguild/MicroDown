Class {
	#name : #BaselineOfMicrodownDev,
	#superclass : #BaselineOf,
	#category : #BaselineOfMicrodownDev
}

{ #category : #baselines }
BaselineOfMicrodownDev >> baseline: spec [
	<baseline>
	
	spec for: #'common' do: [
		spec baseline: 'PillarDocumentModel' with: [ spec 
				repository: 'github://pillar-markup/pillar:dev-8/src' ].
		spec 
			package: #'Microdown';
			package: #'Microdown-Tests' with: [ spec requires:  #( #'Microdown') ];
			package: #'Microdown-Pillar' with: [ spec requires:  #( #'Microdown' #'PillarDocumentModel') ];
			package: #'Microdown-Pillar-Tests' with: [
				spec requires:  #(#'Microdown-Pillar' #'Microdown-Tests') ]
		 ]
			

]
