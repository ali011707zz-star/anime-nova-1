.class public final synthetic Lcom/player/easy/App$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/App;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/App;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/App$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/App;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/App$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/App;

    invoke-static {v0}, Lcom/player/easy/App;->$r8$lambda$_Nzurv4TlceuIyZqtUL9Xu-z4GE(Lcom/player/easy/App;)Landroidx/media3/datasource/cache/SimpleCache;

    move-result-object v0

    return-object v0
.end method
