.class final synthetic Lcom/google/android/gms/internal/ads/zzetv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Landroid/content/ContentResolver;


# direct methods
.method synthetic constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetv;->zza:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetv;->zza:Landroid/content/ContentResolver;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzetx;

    const-string v2, "advertising_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    const-string v3, "limit_ad_tracking"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    :cond_0
    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/ads/zzetx;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method
