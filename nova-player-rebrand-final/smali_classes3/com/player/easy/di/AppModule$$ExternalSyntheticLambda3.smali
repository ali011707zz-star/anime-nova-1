.class public final synthetic Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/di/AppModule;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/di/AppModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda3;->f$0:Lcom/player/easy/di/AppModule;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/di/AppModule$$ExternalSyntheticLambda3;->f$0:Lcom/player/easy/di/AppModule;

    invoke-static {v0}, Lcom/player/easy/di/AppModule;->$r8$lambda$ka_7hp04xpGuBDkK6EukfIG4IWE(Lcom/player/easy/di/AppModule;)Lcom/player/easy/data/download/DownloadManager;

    move-result-object v0

    return-object v0
.end method
