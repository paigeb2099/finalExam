<Screen
  id="page1"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="cumulative_order_count"
    isMultiplayerEdited={false}
    query={include("../lib/cumulative_order_count.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="totalSpent"
    query={include("../lib/totalSpent.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="b164e4a6-c5ab-49d6-b483-84ba9dcd7f3e"
    warningCodes={[]}
  />
  <Frame
    id="$main2"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="fcd7d" value="Tab 1" />
          <Option id="0e992" value="Tab 2" />
          <Option id="c485c" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="b2256" viewKey="View 1">
        <Chart
          id="lineChart1"
          barMode="group"
          barOrientation=""
          chartType="line"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisLineWidth={1}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowLine={true}
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxisGrid={true}
          yAxisLineWidth={1}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: [null] }}
            colorArrayDropDown={{ array: [null] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ cumulative_order_count.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="spline"
            lineUnderFillMode="gradient"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Primary"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="line"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ cumulative_order_count.data.date }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ cumulative_order_count.data.cumulative_order_count }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="9bc40" viewKey="View 2">
        <Chart
          id="barChart1"
          barGap={0.4}
          barMode="group"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitle="Asset Type"
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxisGrid={true}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowLine={true}
          yAxisShowTickLabels={true}
          yAxisTickFormat="$,.0f"
          yAxisTickFormatMode="gui"
          yAxisTitle="Cost"
          yAxisZeroLine={true}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ totalSpent.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="sales"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ totalSpent.data.type }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ totalSpent.data.total_budget_spent }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="47fec" viewKey="View 3">
        <Chart
          id="pieChart1"
          chartType="pie"
          colorArray={[
            "#11B5AE",
            "#4046CA",
            "#F68512",
            "#DE3C82",
            "#7E84FA",
            "#72E06A",
          ]}
          colorArrayDropDown={[
            "#11B5AE",
            "#4046CA",
            "#F68512",
            "#DE3C82",
            "#7E84FA",
            "#72E06A",
          ]}
          colorInputMode="colorArrayDropDown"
          datasource="{{ orders.data }}"
          datasourceMode="source"
          gradientColorArray={[
            ["0.0", "{{ theme.canvas }}"],
            ["1.0", "{{ theme.primary }}"],
          ]}
          hoverTemplate="%{label}<br>%{value}<br>%{percent}<extra></extra>"
          hoverTemplateMode="source"
          labelData="{{ orders.data.status }}"
          labelDataMode="source"
          legendPosition="none"
          lineColor="{{ theme.surfacePrimary }}"
          lineWidth={2}
          pieDataHole={0.4}
          selectedPoints="[]"
          textTemplateMode="source"
          textTemplatePosition="outside"
          title={null}
          valueData=""
          valueDataMode="source"
        />
      </View>
    </Container>
  </Frame>
</Screen>
