.class Leu/davidea/flexibleadapter/SelectableAdapter$1;
.super Ljava/lang/Object;
.source "SelectableAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/SelectableAdapter;->resetActionModeFlags()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/SelectableAdapter;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/SelectableAdapter;)V
    .locals 0

    .line 286
    iput-object p1, p0, Leu/davidea/flexibleadapter/SelectableAdapter$1;->this$0:Leu/davidea/flexibleadapter/SelectableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Leu/davidea/flexibleadapter/SelectableAdapter$1;->this$0:Leu/davidea/flexibleadapter/SelectableAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->mSelectAll:Z

    .line 290
    iput-boolean v1, v0, Leu/davidea/flexibleadapter/SelectableAdapter;->mLastItemInActionMode:Z

    return-void
.end method
