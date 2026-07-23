.class final synthetic Lcom/google/android/gms/internal/ads/zzhta;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhll;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhta;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhta;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhta;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhta;->zza:Lcom/google/android/gms/internal/ads/zzhta;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhtm;->zza:Lcom/google/android/gms/internal/ads/zzhsg;

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhuk;->zza:Ljava/math/BigInteger;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhuh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhuh;-><init>([B)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhui;->zza:Lcom/google/android/gms/internal/ads/zzhui;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhuh;->zzd(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhuh;->zze(Lcom/google/android/gms/internal/ads/zzhui;)Lcom/google/android/gms/internal/ads/zzhuh;

    const/16 v1, 0x20

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhuh;->zzf(I)Lcom/google/android/gms/internal/ads/zzhuh;

    const/16 v1, 0xc00

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhuh;->zza(I)Lcom/google/android/gms/internal/ads/zzhuh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhuk;->zza:Ljava/math/BigInteger;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhuh;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhuh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhuj;->zza:Lcom/google/android/gms/internal/ads/zzhuj;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhuh;->zzc(Lcom/google/android/gms/internal/ads/zzhuj;)Lcom/google/android/gms/internal/ads/zzhuh;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhuh;->zzg()Lcom/google/android/gms/internal/ads/zzhuk;

    move-result-object v0

    return-object v0
.end method
