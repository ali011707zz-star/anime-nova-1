.class public abstract synthetic Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticApiModelOutline6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/ApplicationExitInfo;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v0

    return-wide v0
.end method
