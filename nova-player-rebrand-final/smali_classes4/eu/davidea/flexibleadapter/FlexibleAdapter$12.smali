.class Leu/davidea/flexibleadapter/FlexibleAdapter$12;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->smoothScrollToPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V
    .locals 0

    .line 5094
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$12;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iput p2, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$12;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 5097
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$12;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    iget v1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$12;->val$position:I

    invoke-static {v0, v1}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$1100(Leu/davidea/flexibleadapter/FlexibleAdapter;I)V

    return-void
.end method
