.class public final synthetic Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Lcom/player/easy/PlayStoreGoogleServiceProvider;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/player/easy/PlayStoreGoogleServiceProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/player/easy/PlayStoreGoogleServiceProvider;

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateSuccess()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda0;->f$1:Lcom/player/easy/PlayStoreGoogleServiceProvider;

    invoke-static {v0, v1}, Lcom/player/easy/PlayStoreGoogleServiceProvider;->$r8$lambda$Se0mgPGeYVpeaabD8sy3iuwF8zE(Landroid/app/Activity;Lcom/player/easy/PlayStoreGoogleServiceProvider;)V

    return-void
.end method
