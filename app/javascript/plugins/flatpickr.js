import flatpickr from "flatpickr";
import "flatpickr/dist/themes/dark";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end" })]
    altInput: true,
    minDate: "today",
    maxDate: new Date().fp_incr(14)
  });
}

export { initFlatpickr };
