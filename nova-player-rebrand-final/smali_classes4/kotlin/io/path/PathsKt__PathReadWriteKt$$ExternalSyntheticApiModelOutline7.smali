.class public abstract synthetic Lkotlin/io/path/PathsKt__PathReadWriteKt$$ExternalSyntheticApiModelOutline7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
