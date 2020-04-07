DECLARE @DATAINICIO DATETIME;
DECLARE @DATAFINAL DATETIME;
DECLARE @DATATOTALANTERIOR DATETIME;
SET @DATAINICIO = '04/01/2018'
SET @DATAFINAL = '04/21/2018'


	SELECT DISTINCT
		SituacaoWorkFlowCorp.IdtSituacaoWorkFlow
	   ,SituacaoWorkFlowCorp.DesSituacaoWorkFlow
	   ,COUNT(DISTINCT ProcessoDifCorporativo.IdtProcessoDifCorporativo) AS QTD
	   ,SituacaoWorkFlowCorp.Ordem
	FROM ProcessoDifCorporativo(NOLOCK)
	INNER JOIN SituacaoWorkFlowCorp
		ON ProcessoDifCorporativo.IdtSituacaoWorkFlow = SituacaoWorkFlowCorp.IdtSituacaoWorkFlow
	INNER JOIN ProcessoOcorrenciaDifCorporativo(NOLOCK)
		ON ProcessoDifCorporativo.IdtProcessoDifCorporativo = ProcessoOcorrenciaDifCorporativo.IdtProcessoDifCorporativo
	WHERE ProcessoOcorrenciaDifCorporativo.Modulo = 0
	AND ProcessoDifCorporativo.IdtSituacaoWorkFlow <> 99
	AND ProcessoDifCorporativo.FlgExcluido = 0
	AND ProcessoDifCorporativo.DtEnvFinanceiro BETWEEN @DATAINICIO AND @DATAFINAL
	GROUP BY SituacaoWorkFlowCorp.IdtSituacaoWorkFlow
			,SituacaoWorkFlowCorp.DesSituacaoWorkFlow
			,SituacaoWorkFlowCorp.Ordem
