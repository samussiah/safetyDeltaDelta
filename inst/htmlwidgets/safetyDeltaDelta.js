HTMLWidgets.widget({
    name: 'safetyDeltaDelta',
    type: 'output',
    factory: function(el, width, height) {

        // TODO: define shared variables for this instance

        return {
            renderValue: function(inputs) {
                const element = `#${el.id}`;
                const settings = inputs.settings;
                console.log(settings);
                const data = HTMLWidgets.dataframeToD3(inputs.data);
                const instance = safetyDeltaDelta(element, settings);
                instance.init(data)
            },

            resize: function(width, height) {
                // TODO: code to re-render the widget with a new size
            }
        };
    }
});