import flatpickr from "flatpickr";
import "flatpickr/dist/themes/dark";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    altInput: true,
    plugins: [new rangePlugin({ input: "#range_end" })]
  });
}

export { initFlatpickr };
