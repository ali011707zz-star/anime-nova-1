.class public final Lcom/google/android/gms/internal/ads/zzdkw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdkr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdkr;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzdkr;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdkr;)Lcom/google/android/gms/internal/ads/zzdkw;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdkw;-><init>(Lcom/google/android/gms/internal/ads/zzdkr;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Landroid/view/View;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzdkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkr;->zzd()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkw;->zza:Lcom/google/android/gms/internal/ads/zzdkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdkr;->zzd()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
