.class final synthetic Lcom/google/android/gms/internal/ads/zzheg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkt;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzheg;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzheg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzheg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzheg;->zza:Lcom/google/android/gms/internal/ads/zzheg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhaz;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzher;

    sget v0, Lcom/google/android/gms/internal/ads/zzhei;->$r8$clinit:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzher;->zze()Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhev;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzher;->zze()Lcom/google/android/gms/internal/ads/zzhev;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhev;->zzd()Lcom/google/android/gms/internal/ads/zzhch;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhbn;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhbm;

    const/4 p1, 0x0

    throw p1
.end method
