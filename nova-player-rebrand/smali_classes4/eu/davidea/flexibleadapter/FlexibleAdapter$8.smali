.class Leu/davidea/flexibleadapter/FlexibleAdapter$8;
.super Ljava/lang/Object;
.source "FlexibleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/davidea/flexibleadapter/FlexibleAdapter;->onLoadMore(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;


# direct methods
.method constructor <init>(Leu/davidea/flexibleadapter/FlexibleAdapter;)V
    .locals 0

    .line 2093
    iput-object p1, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$8;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2097
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$8;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-static {v0}, Leu/davidea/flexibleadapter/FlexibleAdapter;->access$800(Leu/davidea/flexibleadapter/FlexibleAdapter;)V

    .line 2099
    iget-object v0, p0, Leu/davidea/flexibleadapter/FlexibleAdapter$8;->this$0:Leu/davidea/flexibleadapter/FlexibleAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
