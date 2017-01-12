FROM microsoft/dotnet

# copy project.json and restore as distinct layers
COPY project.json .
RUN dotnet restore

# copy and build everything else
COPY . .
ENTRYPOINT ["dotnet", "run"]