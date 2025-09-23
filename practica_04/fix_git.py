#!/usr/bin/env python3
import os
import shutil

def fix_git_rebase():
    try:
        # Eliminar la carpeta de rebase-merge
        rebase_path = '.git/rebase-merge'
        if os.path.exists(rebase_path):
            shutil.rmtree(rebase_path)
            print("✅ Carpeta de rebase eliminada exitosamente")
        else:
            print("❌ No se encontró la carpeta de rebase")
        
        # Verificar el estado de Git
        print("🔍 Verificando estado de Git...")
        
    except Exception as e:
        print(f"❌ Error: {e}")

if __name__ == "__main__":
    fix_git_rebase()
