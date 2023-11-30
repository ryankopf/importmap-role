async function updateUserSpecificImports() {
    try {
      // Fetch user-specific imports
      const response = await fetch('/userjs');
      const userImports = await response.json();
  
      // Find the existing importmap
      const existingImportmap = document.querySelector('script[type="importmap"]');
      const existingImports = existingImportmap ? JSON.parse(existingImportmap.textContent).imports : {};
  
      // Merge the existing imports with the user-specific imports
      const mergedImports = { ...existingImports, ...userImports };
  
      // Create a new importmap script tag with the merged imports
      const newImportmap = document.createElement("script");
      newImportmap.type = "importmap";
      newImportmap.textContent = JSON.stringify({ imports: mergedImports }, undefined, 2);
  
      // Replace the existing importmap with the new one
      if (existingImportmap) {
        document.head.removeChild(existingImportmap);
      }
      document.head.appendChild(newImportmap);
    } catch (error) {
      console.error("Error updating importmap:", error);
    }
  }
  
  document.addEventListener("DOMContentLoaded", updateUserSpecificImports);