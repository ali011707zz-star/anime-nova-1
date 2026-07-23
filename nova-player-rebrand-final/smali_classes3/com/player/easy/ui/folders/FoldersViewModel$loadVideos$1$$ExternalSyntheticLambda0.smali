.class public final synthetic Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/ui/folders/FoldersViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/ui/folders/FoldersViewModel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/ui/folders/FoldersViewModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/player/easy/ui/folders/FoldersViewModel$loadVideos$1;->$r8$lambda$asK80vYGZe2owFLoVtZPQBCoprQ(Lcom/player/easy/ui/folders/FoldersViewModel;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
