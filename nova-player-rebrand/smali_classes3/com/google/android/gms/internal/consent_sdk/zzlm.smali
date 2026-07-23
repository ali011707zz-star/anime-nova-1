.class public final Lcom/google/android/gms/internal/consent_sdk/zzlm;
.super Lcom/google/android/gms/internal/consent_sdk/zzqm;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzrr;


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/consent_sdk/zzlm;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzlm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/consent_sdk/zzlm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/consent_sdk/zzlm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlm;

    const-class v1, Lcom/google/android/gms/internal/consent_sdk/zzlm;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzz(Ljava/lang/Class;Lcom/google/android/gms/internal/consent_sdk/zzqm;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzlm;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzlm;->zzf:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/consent_sdk/zzlm;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/consent_sdk/zzlm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlm;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/consent_sdk/zzlm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlm;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzll;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzll;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzln;)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/consent_sdk/zzlm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/consent_sdk/zzlm;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string v3, "zzd"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string v3, "zze"

    aput-object v3, p1, p2

    const-string p2, "zzf"

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const-string p2, "zzj"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/consent_sdk/zzlm;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzlm;

    const-string p3, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1007\u0004\u0006\u1007\u0005"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzw(Lcom/google/android/gms/internal/consent_sdk/zzrq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
