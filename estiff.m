
function[elk] = estiff(A,Iz,Iy,J,E,v,L)

	% Genearal Stiffness Matrix of Beam.
	%   A = Crossectional-Area of The Beam. 
    %   Iz = Moment of Area of Beam about Izz-Axis. 
    %   Iy = Moment of Area of Beam about Iyy-Axis. 
    %   J  = Torsoinal Moment of Area. 
    %   E  = Young's Modulus of Material 
    %   v  = Poison's ratio 
    %   L  = Length of the Beam


	elk=E* [A/L		,0			,0			,0				,0			,0			,-A/L		,0			,0			,0				,0			,0			;
			0		,12*Iz/L^3	,0			,0				,0			,6*Iz/L^2	,0			,-12*Iz/L^3	,0			,0				,0			,6*Iz/L^2	;
			0		,0			,12*Iy/L^3	,0				,-6*Iy/L^2	,0			,0			,0			,-12*Iy/L^3	,0				,-6*Iy/L^2	,0			;
			0		,0			,0			,J/(2*(1+v)*L)	,0			,0			,0			,0			,0			,-J/(2*(1+v)*L)	,0			,0			;
			0		,0			,-6*Iy/L^2	,0				,4*Iy/L		,0			,0			,0			,6*Iy/L^2	,0				,2*Iy/L		,0			;
			0		,6*Iz/L^2	,0			,0				,0			,4*Iz/L		,0			,-6*Iz/L^2	,0			,0				,0			,2*Iz/L		;
			-A/L	,0			,0			,0				,0			,0			,A/L		,0			,0			,0				,0			,0			;
			0		,-12*Iz/L^3	,0			,0				,0			,-6*Iz/L^2	,0			,12*Iz/L^3	,0			,0				,0			,-6*Iz/L^2	;
			0		,0			,-12*Iy/L^3	,0				,6*Iy/L^2	,0			,0			,0			,12*Iy/L^3	,0				,6*Iy/L^2	,0			;
			0		,0			,0			,-J/(2*(1+v)*L)	,0			,0			,0			,0			,0			,J/(2*(1+v)*L)	,0			,0			;
			0		,0			,-6*Iy/L^2	,0				,2*Iy/L		,0			,0			,0			,6*Iy/L^2	,0				,4*Iy/L		,0			;
			0		,6*Iz/L^2	,0			,0				,0			,2*Iz/L		,0			,-6*Iz/L^2	,0			,0				,0			,4*Iz/L     ];

end