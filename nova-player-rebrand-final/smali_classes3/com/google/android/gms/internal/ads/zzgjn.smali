.class final synthetic Lcom/google/android/gms/internal/ads/zzgjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgjq;

.field private final synthetic zzb:Landroid/content/Context;

.field private final synthetic zzc:Ljava/lang/String;

.field private final synthetic zzd:Landroid/view/View;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgjq;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzgjq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzd:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zza:Lcom/google/android/gms/internal/ads/zzgjq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgjn;->zzd:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzgjq;->zzm(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
