.class public final Lcom/google/android/gms/internal/ads/zzcwy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcwv;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcwv;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zza:Lcom/google/android/gms/internal/ads/zzcwv;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcwv;)Lcom/google/android/gms/internal/ads/zzcwy;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcwy;-><init>(Lcom/google/android/gms/internal/ads/zzcwv;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfiu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zza:Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwv;->zzc()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwy;->zza:Lcom/google/android/gms/internal/ads/zzcwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwv;->zzc()Lcom/google/android/gms/internal/ads/zzfiu;

    move-result-object v0

    return-object v0
.end method
