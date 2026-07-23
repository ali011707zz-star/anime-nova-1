.class public abstract synthetic Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator$$ExternalSyntheticApiModelOutline1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method
