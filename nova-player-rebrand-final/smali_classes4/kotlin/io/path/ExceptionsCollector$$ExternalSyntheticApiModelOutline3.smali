.class public abstract synthetic Lkotlin/io/path/ExceptionsCollector$$ExternalSyntheticApiModelOutline3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Ljava/nio/file/FileSystemException;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Ljava/nio/file/FileSystemException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method
