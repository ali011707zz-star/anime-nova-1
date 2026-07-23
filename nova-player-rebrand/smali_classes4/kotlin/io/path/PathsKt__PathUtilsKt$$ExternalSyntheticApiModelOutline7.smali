.class public abstract synthetic Lkotlin/io/path/PathsKt__PathUtilsKt$$ExternalSyntheticApiModelOutline7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->getOwner(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p0

    return-object p0
.end method
