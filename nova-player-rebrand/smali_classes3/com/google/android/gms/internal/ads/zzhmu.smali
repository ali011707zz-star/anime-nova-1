.class final synthetic Lcom/google/android/gms/internal/ads/zzhmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhll;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhmu;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhmu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhmu;->zza:Lcom/google/android/gms/internal/ads/zzhmu;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhmx;->zza:Lcom/google/android/gms/internal/ads/zzhmk;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhmh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmh;-><init>([B)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmh;->zza(I)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhmh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmj;->zza:Lcom/google/android/gms/internal/ads/zzhmj;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmh;->zzc(Lcom/google/android/gms/internal/ads/zzhmj;)Lcom/google/android/gms/internal/ads/zzhmh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhmi;->zze:Lcom/google/android/gms/internal/ads/zzhmi;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhmh;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;)Lcom/google/android/gms/internal/ads/zzhmh;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhmh;->zze()Lcom/google/android/gms/internal/ads/zzhmk;

    move-result-object v0

    return-object v0
.end method
