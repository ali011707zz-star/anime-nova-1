.class public final Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$2;
.super Ljava/lang/Object;
.source "SearchFragment.kt"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/player/easy/ui/search/SearchFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$2",
        "Landroidx/appcompat/widget/SearchView$OnQueryTextListener;",
        "onQueryTextSubmit",
        "",
        "query",
        "",
        "onQueryTextChange",
        "newText",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/player/easy/ui/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/player/easy/ui/search/SearchFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$2;->this$0:Lcom/player/easy/ui/search/SearchFragment;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$2;->this$0:Lcom/player/easy/ui/search/SearchFragment;

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/search/SearchFragment;->getResultSet(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/search/SearchFragment;->setItems(Ljava/util/List;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/player/easy/ui/search/SearchFragment$onCreateOptionsMenu$2;->this$0:Lcom/player/easy/ui/search/SearchFragment;

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/search/SearchFragment;->getResultSet(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/player/easy/ui/search/SearchFragment;->setItems(Ljava/util/List;)V

    const/4 p1, 0x0

    return p1
.end method
