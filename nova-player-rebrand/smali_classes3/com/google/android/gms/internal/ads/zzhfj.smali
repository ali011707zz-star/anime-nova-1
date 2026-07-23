.class final synthetic Lcom/google/android/gms/internal/ads/zzhfj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhll;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfj;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfj;->zza:Lcom/google/android/gms/internal/ads/zzhfj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhfk;->zza:Lcom/google/android/gms/internal/ads/zzhdm;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdk;-><init>([B)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdk;->zzb(I)Lcom/google/android/gms/internal/ads/zzhdk;

    const/16 v1, 0x10

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdk;->zza(I)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdk;->zzc(I)Lcom/google/android/gms/internal/ads/zzhdk;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhdl;->zza:Lcom/google/android/gms/internal/ads/zzhdl;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhdk;->zzd(Lcom/google/android/gms/internal/ads/zzhdl;)Lcom/google/android/gms/internal/ads/zzhdk;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhdk;->zze()Lcom/google/android/gms/internal/ads/zzhdm;

    move-result-object v0

    return-object v0
.end method
