.class Leu/davidea/flexibleadapter/FlexibleAdapter$4;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableFooterWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$footerItem:Leu/davidea/flexibleadapter/items/IFlexible;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$4;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$4;->val$footerItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1132
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$4;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$4;->val$footerItem:Leu/davidea/flexibleadapter/items/IFlexible;

    invoke-virtual {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->removeScrollableFooter(Leu/davidea/flexibleadapter/items/IFlexible;)V

    return-void
.end method
