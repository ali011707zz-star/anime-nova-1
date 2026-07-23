.class public abstract synthetic Lcom/player/easy/ui/folders/FoldersViewModel$deleteFolders$1$1$$ExternalSyntheticApiModelOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static bridge synthetic m(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Landroid/provider/MediaStore;->createDeleteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
