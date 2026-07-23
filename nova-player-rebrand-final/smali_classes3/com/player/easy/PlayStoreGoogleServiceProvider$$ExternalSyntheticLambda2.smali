.class public final synthetic Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;


# instance fields
.field public final synthetic f$0:Lcom/player/easy/PlayStoreGoogleServiceProvider;

.field public final synthetic f$1:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/player/easy/PlayStoreGoogleServiceProvider;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda2;->f$0:Lcom/player/easy/PlayStoreGoogleServiceProvider;

    iput-object p2, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onConsentFormDismissed(Lcom/google/android/ump/FormError;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda2;->f$0:Lcom/player/easy/PlayStoreGoogleServiceProvider;

    iget-object v1, p0, Lcom/player/easy/PlayStoreGoogleServiceProvider$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Lcom/player/easy/PlayStoreGoogleServiceProvider;->$r8$lambda$FkDJJrdQdiUVc6J3O3jiSlYSVKs(Lcom/player/easy/PlayStoreGoogleServiceProvider;Landroid/app/Activity;Lcom/google/android/ump/FormError;)V

    return-void
.end method
