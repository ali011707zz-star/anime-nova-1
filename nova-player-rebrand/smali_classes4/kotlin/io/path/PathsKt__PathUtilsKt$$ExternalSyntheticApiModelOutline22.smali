.class public abstract synthetic Lkotlin/io/path/PathsKt__PathUtilsKt$$ExternalSyntheticApiModelOutline22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method
