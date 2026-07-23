.class final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FrameworkSQLiteOpenHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 11

    .line 48
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getName$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getUseNoBackupDirectory$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/File;

    .line 52
    iget-object v2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getContext$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroidx/sqlite/db/SupportSQLiteCompat$Api21Impl;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 53
    iget-object v3, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getName$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Ljava/lang/String;

    move-result-object v3

    .line 51
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    new-instance v4, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 56
    iget-object v2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getContext$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroid/content/Context;

    move-result-object v5

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 58
    new-instance v7, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    invoke-direct {v7, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 59
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getCallback$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    move-result-object v8

    .line 60
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getAllowDataLossOnRecovery$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Z

    move-result v9

    .line 55
    invoke-direct/range {v4 .. v9}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v5, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 64
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getContext$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroid/content/Context;

    move-result-object v6

    .line 65
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getName$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Ljava/lang/String;

    move-result-object v7

    .line 66
    new-instance v8, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    invoke-direct {v8, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 67
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getCallback$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    move-result-object v9

    .line 68
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getAllowDataLossOnRecovery$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Z

    move-result v10

    .line 63
    invoke-direct/range {v5 .. v10}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    move-object v4, v5

    .line 74
    :goto_0
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->this$0:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;

    invoke-static {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->access$getWriteAheadLoggingEnabled$p(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Z

    move-result v0

    .line 72
    invoke-static {v4, v0}, Landroidx/sqlite/db/SupportSQLiteCompat$Api16Impl;->setWriteAheadLoggingEnabled(Landroid/database/sqlite/SQLiteOpenHelper;Z)V

    return-object v4
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$lazyDelegate$1;->invoke()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    move-result-object v0

    return-object v0
.end method
