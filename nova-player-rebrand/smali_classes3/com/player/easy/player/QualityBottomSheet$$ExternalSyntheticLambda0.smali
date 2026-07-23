.class public final synthetic Lcom/player/easy/player/QualityBottomSheet$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/player/QualityBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/player/QualityBottomSheet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/player/QualityBottomSheet$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/player/QualityBottomSheet;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/player/easy/player/QualityBottomSheet$$ExternalSyntheticLambda0;->f$0:Lcom/player/easy/player/QualityBottomSheet;

    check-cast p1, Lcom/player/easy/player/Quality;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/player/easy/player/QualityBottomSheet;->$r8$lambda$3ZMKTgjtWpFT3NZcIrROSLpEkPw(Lcom/player/easy/player/QualityBottomSheet;Lcom/player/easy/player/Quality;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
