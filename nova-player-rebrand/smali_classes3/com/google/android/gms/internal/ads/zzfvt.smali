.class final Lcom/google/android/gms/internal/ads/zzfvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvw;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzaxg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaxg;->zzj()Lcom/google/android/gms/internal/ads/zzawg;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzawg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibl;->zzbm()Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzaxg;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfvt;->zza:Lcom/google/android/gms/internal/ads/zzaxg;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzaxg;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfvt;->zza:Lcom/google/android/gms/internal/ads/zzaxg;

    return-object v0
.end method
