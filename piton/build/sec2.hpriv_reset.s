.global HPriv_Reset_Handler
	
HPriv_Reset_Handler:



	! caches are enable, mmus on.
	wrpr  1, %tl
	
	! create trap stack and go to user code by done
	! set tpc and ntpc
	setx 0x1834000, %g1, %g2
	wrpr %g2, %g0, %tpc
	wrpr %g2, %g0, %tnpc
	setx 5632, %g1, %g2
	wrpr %g2, %g0, %tstate
	done



