.class Leu/davidea/flexibleadapter/FlexibleAdapter$3;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableHeaderWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$headerItem:Leu/davidea/flexibleadapter/items/IFlexible;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 0

    .line 1110
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$3;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$3;->val$headerItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1113
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$3;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$3;->val$headerItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableHeader(Leu/davidea/flexibleadapter/items/IFlexible;)V

    return-void
.end method
