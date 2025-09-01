@echo off
if not exist .venv uv venv .venv
call .venv\Scripts\activate
uv pip install -r requirements.txt
python api.py --source "%1" --write_to_txt --language cn