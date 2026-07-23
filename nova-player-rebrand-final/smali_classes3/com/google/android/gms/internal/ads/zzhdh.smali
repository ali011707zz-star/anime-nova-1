.class final synthetic Lcom/google/android/gms/internal/ads/zzhdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjb;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhdh;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhdh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhdh;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhbp;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhaz;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhdm;

    sget v0, Lcom/google/android/gms/internal/ads/zzhdj;->$r8$clinit:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhdm;->zzc()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhde;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhde;-><init>([B)V

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhde;->zza(Lcom/google/android/gms/internal/ads/zzhdm;)Lcom/google/android/gms/internal/ads/zzhde;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzhde;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhde;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhdm;->zzc()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyg;->zzb(I)Lcom/google/android/gms/internal/ads/zzhyg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhde;->zzb(Lcom/google/android/gms/internal/ads/zzhyg;)Lcom/google/android/gms/internal/ads/zzhde;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhde;->zzd()Lcom/google/android/gms/internal/ads/zzhdf;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
