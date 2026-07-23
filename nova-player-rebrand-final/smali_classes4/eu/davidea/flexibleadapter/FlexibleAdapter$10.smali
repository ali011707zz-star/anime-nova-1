.class Leu/davidea/flexibleadapter/FlexibleAdapter$10;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->removeItemWithDelay(Leu/davidea/flexibleadapter/items/IFlexible;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$item:Leu/davidea/flexibleadapter/items/IFlexible;

.field final synthetic val$permanent:Z


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V
    .locals 0

    .line 3344
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$10;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput-object p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$10;->val$item:Leu/davidea/flexibleadapter/items/IFlexible;

    iput-boolean p3, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$10;->val$permanent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3347
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$10;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget-object v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$10;->val$item:Leu/davidea/flexibleadapter/items/IFlexible;

    iget-boolean v2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$10;->val$permanent:Z

    invoke-static {v0, v1, v2}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1000(Leu/davidea/flexibleadapter/FlexibleAdapter;Leu/davidea/flexibleadapter/items/IFlexible;Z)V

    return-void
.end method
