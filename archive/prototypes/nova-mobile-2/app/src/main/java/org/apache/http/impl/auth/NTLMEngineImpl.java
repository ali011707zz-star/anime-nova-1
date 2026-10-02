package org.apache.http.impl.auth;

import com.google.android.material.progressindicator.BaseProgressIndicator;
import java.io.UnsupportedEncodingException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.SecureRandom;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;
import org.apache.http.util.EncodingUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class NTLMEngineImpl implements NTLMEngine {
    public static final String DEFAULT_CHARSET = "ASCII";
    public static final int FLAG_NEGOTIATE_128 = 536870912;
    public static final int FLAG_NEGOTIATE_ALWAYS_SIGN = 32768;
    public static final int FLAG_NEGOTIATE_KEY_EXCH = 1073741824;
    public static final int FLAG_NEGOTIATE_NTLM = 512;
    public static final int FLAG_NEGOTIATE_NTLM2 = 524288;
    public static final int FLAG_NEGOTIATE_SEAL = 32;
    public static final int FLAG_NEGOTIATE_SIGN = 16;
    public static final int FLAG_TARGET_DESIRED = 4;
    public static final int FLAG_UNICODE_ENCODING = 1;
    private static final SecureRandom RND_GEN;
    private static byte[] SIGNATURE;
    private String credentialCharset = "ASCII";

    /* loaded from: classes2.dex */
    public static class HMACMD5 {
        public byte[] ipad;
        public MessageDigest md5;
        public byte[] opad;

        public HMACMD5(byte[] bArr) throws NTLMEngineException {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                this.md5 = messageDigest;
                this.ipad = new byte[64];
                this.opad = new byte[64];
                int length = bArr.length;
                if (length > 64) {
                    messageDigest.update(bArr);
                    bArr = this.md5.digest();
                    length = bArr.length;
                }
                int i10 = 0;
                while (i10 < length) {
                    this.ipad[i10] = (byte) (54 ^ bArr[i10]);
                    this.opad[i10] = (byte) (92 ^ bArr[i10]);
                    i10++;
                }
                while (i10 < 64) {
                    this.ipad[i10] = 54;
                    this.opad[i10] = 92;
                    i10++;
                }
                this.md5.reset();
                this.md5.update(this.ipad);
            } catch (Exception e10) {
                throw new NTLMEngineException("Error getting md5 message digest implementation: " + e10.getMessage(), e10);
            }
        }

        public byte[] getOutput() {
            byte[] digest = this.md5.digest();
            this.md5.update(this.opad);
            return this.md5.digest(digest);
        }

        public void update(byte[] bArr) {
            this.md5.update(bArr);
        }

        public void update(byte[] bArr, int i10, int i11) {
            this.md5.update(bArr, i10, i11);
        }
    }

    /* loaded from: classes2.dex */
    public static class MD4 {
        public int A = 1732584193;
        public int B = -271733879;
        public int C = -1732584194;
        public int D = 271733878;
        public long count = 0;
        public byte[] dataBuffer = new byte[64];

        public byte[] getOutput() {
            int i10 = (int) (this.count & 63);
            int i11 = i10 < 56 ? 56 - i10 : 120 - i10;
            byte[] bArr = new byte[i11 + 8];
            bArr[0] = Byte.MIN_VALUE;
            for (int i12 = 0; i12 < 8; i12++) {
                bArr[i11 + i12] = (byte) ((this.count * 8) >>> (i12 * 8));
            }
            update(bArr);
            byte[] bArr2 = new byte[16];
            NTLMEngineImpl.writeULong(bArr2, this.A, 0);
            NTLMEngineImpl.writeULong(bArr2, this.B, 4);
            NTLMEngineImpl.writeULong(bArr2, this.C, 8);
            NTLMEngineImpl.writeULong(bArr2, this.D, 12);
            return bArr2;
        }

        public void processBuffer() {
            int[] iArr = new int[16];
            for (int i10 = 0; i10 < 16; i10++) {
                byte[] bArr = this.dataBuffer;
                int i11 = i10 * 4;
                iArr[i10] = (bArr[i11] & 255) + ((bArr[i11 + 1] & 255) << 8) + ((bArr[i11 + 2] & 255) << 16) + ((bArr[i11 + 3] & 255) << 24);
            }
            int i12 = this.A;
            int i13 = this.B;
            int i14 = this.C;
            int i15 = this.D;
            round1(iArr);
            round2(iArr);
            round3(iArr);
            this.A += i12;
            this.B += i13;
            this.C += i14;
            this.D += i15;
        }

        public void round1(int[] iArr) {
            int rotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(this.B, this.C, this.D) + iArr[0], 3);
            this.A = rotintlft;
            int rotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft, this.B, this.C) + iArr[1], 7);
            this.D = rotintlft2;
            int rotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft2, this.A, this.B) + iArr[2], 11);
            this.C = rotintlft3;
            int rotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft3, this.D, this.A) + iArr[3], 19);
            this.B = rotintlft4;
            int rotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(rotintlft4, this.C, this.D) + iArr[4], 3);
            this.A = rotintlft5;
            int rotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft5, this.B, this.C) + iArr[5], 7);
            this.D = rotintlft6;
            int rotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft6, this.A, this.B) + iArr[6], 11);
            this.C = rotintlft7;
            int rotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft7, this.D, this.A) + iArr[7], 19);
            this.B = rotintlft8;
            int rotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(rotintlft8, this.C, this.D) + iArr[8], 3);
            this.A = rotintlft9;
            int rotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft9, this.B, this.C) + iArr[9], 7);
            this.D = rotintlft10;
            int rotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft10, this.A, this.B) + iArr[10], 11);
            this.C = rotintlft11;
            int rotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft11, this.D, this.A) + iArr[11], 19);
            this.B = rotintlft12;
            int rotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.F(rotintlft12, this.C, this.D) + iArr[12], 3);
            this.A = rotintlft13;
            int rotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.F(rotintlft13, this.B, this.C) + iArr[13], 7);
            this.D = rotintlft14;
            int rotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.F(rotintlft14, this.A, this.B) + iArr[14], 11);
            this.C = rotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.F(rotintlft15, this.D, this.A) + iArr[15], 19);
        }

        public void round2(int[] iArr) {
            int rotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(this.B, this.C, this.D) + iArr[0] + 1518500249, 3);
            this.A = rotintlft;
            int rotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft, this.B, this.C) + iArr[4] + 1518500249, 5);
            this.D = rotintlft2;
            int rotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft2, this.A, this.B) + iArr[8] + 1518500249, 9);
            this.C = rotintlft3;
            int rotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft3, this.D, this.A) + iArr[12] + 1518500249, 13);
            this.B = rotintlft4;
            int rotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(rotintlft4, this.C, this.D) + iArr[1] + 1518500249, 3);
            this.A = rotintlft5;
            int rotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft5, this.B, this.C) + iArr[5] + 1518500249, 5);
            this.D = rotintlft6;
            int rotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft6, this.A, this.B) + iArr[9] + 1518500249, 9);
            this.C = rotintlft7;
            int rotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft7, this.D, this.A) + iArr[13] + 1518500249, 13);
            this.B = rotintlft8;
            int rotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(rotintlft8, this.C, this.D) + iArr[2] + 1518500249, 3);
            this.A = rotintlft9;
            int rotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft9, this.B, this.C) + iArr[6] + 1518500249, 5);
            this.D = rotintlft10;
            int rotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft10, this.A, this.B) + iArr[10] + 1518500249, 9);
            this.C = rotintlft11;
            int rotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft11, this.D, this.A) + iArr[14] + 1518500249, 13);
            this.B = rotintlft12;
            int rotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.G(rotintlft12, this.C, this.D) + iArr[3] + 1518500249, 3);
            this.A = rotintlft13;
            int rotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.G(rotintlft13, this.B, this.C) + iArr[7] + 1518500249, 5);
            this.D = rotintlft14;
            int rotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.G(rotintlft14, this.A, this.B) + iArr[11] + 1518500249, 9);
            this.C = rotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.G(rotintlft15, this.D, this.A) + iArr[15] + 1518500249, 13);
        }

        public void round3(int[] iArr) {
            int rotintlft = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(this.B, this.C, this.D) + iArr[0] + 1859775393, 3);
            this.A = rotintlft;
            int rotintlft2 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft, this.B, this.C) + iArr[8] + 1859775393, 9);
            this.D = rotintlft2;
            int rotintlft3 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft2, this.A, this.B) + iArr[4] + 1859775393, 11);
            this.C = rotintlft3;
            int rotintlft4 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft3, this.D, this.A) + iArr[12] + 1859775393, 15);
            this.B = rotintlft4;
            int rotintlft5 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(rotintlft4, this.C, this.D) + iArr[2] + 1859775393, 3);
            this.A = rotintlft5;
            int rotintlft6 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft5, this.B, this.C) + iArr[10] + 1859775393, 9);
            this.D = rotintlft6;
            int rotintlft7 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft6, this.A, this.B) + iArr[6] + 1859775393, 11);
            this.C = rotintlft7;
            int rotintlft8 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft7, this.D, this.A) + iArr[14] + 1859775393, 15);
            this.B = rotintlft8;
            int rotintlft9 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(rotintlft8, this.C, this.D) + iArr[1] + 1859775393, 3);
            this.A = rotintlft9;
            int rotintlft10 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft9, this.B, this.C) + iArr[9] + 1859775393, 9);
            this.D = rotintlft10;
            int rotintlft11 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft10, this.A, this.B) + iArr[5] + 1859775393, 11);
            this.C = rotintlft11;
            int rotintlft12 = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft11, this.D, this.A) + iArr[13] + 1859775393, 15);
            this.B = rotintlft12;
            int rotintlft13 = NTLMEngineImpl.rotintlft(this.A + NTLMEngineImpl.H(rotintlft12, this.C, this.D) + iArr[3] + 1859775393, 3);
            this.A = rotintlft13;
            int rotintlft14 = NTLMEngineImpl.rotintlft(this.D + NTLMEngineImpl.H(rotintlft13, this.B, this.C) + iArr[11] + 1859775393, 9);
            this.D = rotintlft14;
            int rotintlft15 = NTLMEngineImpl.rotintlft(this.C + NTLMEngineImpl.H(rotintlft14, this.A, this.B) + iArr[7] + 1859775393, 11);
            this.C = rotintlft15;
            this.B = NTLMEngineImpl.rotintlft(this.B + NTLMEngineImpl.H(rotintlft15, this.D, this.A) + iArr[15] + 1859775393, 15);
        }

        public void update(byte[] bArr) {
            byte[] bArr2;
            int i10 = (int) (this.count & 63);
            int i11 = 0;
            while (true) {
                int length = (bArr.length - i11) + i10;
                bArr2 = this.dataBuffer;
                if (length < bArr2.length) {
                    break;
                }
                int length2 = bArr2.length - i10;
                System.arraycopy(bArr, i11, bArr2, i10, length2);
                this.count += length2;
                i11 += length2;
                processBuffer();
                i10 = 0;
            }
            if (i11 < bArr.length) {
                int length3 = bArr.length - i11;
                System.arraycopy(bArr, i11, bArr2, i10, length3);
                this.count += length3;
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class Type1Message extends NTLMMessage {
        public byte[] domainBytes;
        public byte[] hostBytes;

        public Type1Message(String str, String str2) throws NTLMEngineException {
            try {
                String convertHost = NTLMEngineImpl.convertHost(str2);
                String convertDomain = NTLMEngineImpl.convertDomain(str);
                this.hostBytes = convertHost.getBytes("UnicodeLittleUnmarked");
                this.domainBytes = convertDomain.toUpperCase().getBytes("UnicodeLittleUnmarked");
            } catch (UnsupportedEncodingException e10) {
                throw new NTLMEngineException("Unicode unsupported: " + e10.getMessage(), e10);
            }
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        public String getResponse() {
            prepareResponse(this.hostBytes.length + 32 + this.domainBytes.length, 1);
            addULong(537395765);
            addUShort(this.domainBytes.length);
            addUShort(this.domainBytes.length);
            addULong(this.hostBytes.length + 32);
            addUShort(this.hostBytes.length);
            addUShort(this.hostBytes.length);
            addULong(32);
            addBytes(this.hostBytes);
            addBytes(this.domainBytes);
            return super.getResponse();
        }
    }

    /* loaded from: classes2.dex */
    public static class Type2Message extends NTLMMessage {
        public byte[] challenge;
        public int flags;
        public String target;
        public byte[] targetInfo;

        public Type2Message(String str) throws NTLMEngineException {
            super(str, 2);
            byte[] bArr = new byte[8];
            this.challenge = bArr;
            readBytes(bArr, 24);
            int readULong = readULong(20);
            this.flags = readULong;
            if ((readULong & 1) != 0) {
                this.target = null;
                if (getMessageLength() >= 20) {
                    byte[] readSecurityBuffer = readSecurityBuffer(12);
                    if (readSecurityBuffer.length != 0) {
                        try {
                            this.target = new String(readSecurityBuffer, "UnicodeLittleUnmarked");
                        } catch (UnsupportedEncodingException e10) {
                            throw new NTLMEngineException(e10.getMessage(), e10);
                        }
                    }
                }
                this.targetInfo = null;
                if (getMessageLength() >= 48) {
                    byte[] readSecurityBuffer2 = readSecurityBuffer(40);
                    if (readSecurityBuffer2.length != 0) {
                        this.targetInfo = readSecurityBuffer2;
                        return;
                    }
                    return;
                }
                return;
            }
            throw new NTLMEngineException("NTLM type 2 message has flags that make no sense: " + Integer.toString(this.flags));
        }

        public byte[] getChallenge() {
            return this.challenge;
        }

        public int getFlags() {
            return this.flags;
        }

        public String getTarget() {
            return this.target;
        }

        public byte[] getTargetInfo() {
            return this.targetInfo;
        }
    }

    /* loaded from: classes2.dex */
    public static class Type3Message extends NTLMMessage {
        public byte[] domainBytes;
        public byte[] hostBytes;
        public byte[] lmResp;
        public byte[] ntResp;
        public int type2Flags;
        public byte[] userBytes;

        public Type3Message(String str, String str2, String str3, String str4, byte[] bArr, int i10, String str5, byte[] bArr2) throws NTLMEngineException {
            this.type2Flags = i10;
            String convertHost = NTLMEngineImpl.convertHost(str2);
            String convertDomain = NTLMEngineImpl.convertDomain(str);
            try {
                if (bArr2 != null && str5 != null) {
                    byte[] access$600 = NTLMEngineImpl.access$600();
                    this.ntResp = NTLMEngineImpl.getNTLMv2Response(str5, str3, str4, bArr, access$600, bArr2);
                    this.lmResp = NTLMEngineImpl.getLMv2Response(str5, str3, str4, bArr, access$600);
                } else if ((i10 & NTLMEngineImpl.FLAG_NEGOTIATE_NTLM2) != 0) {
                    byte[] access$700 = NTLMEngineImpl.access$700();
                    this.ntResp = NTLMEngineImpl.getNTLM2SessionResponse(str4, bArr, access$700);
                    this.lmResp = access$700;
                } else {
                    this.ntResp = NTLMEngineImpl.getNTLMResponse(str4, bArr);
                    this.lmResp = NTLMEngineImpl.getLMResponse(str4, bArr);
                }
            } catch (NTLMEngineException unused) {
                this.ntResp = new byte[0];
                this.lmResp = NTLMEngineImpl.getLMResponse(str4, bArr);
            }
            try {
                this.domainBytes = convertDomain.toUpperCase().getBytes("UnicodeLittleUnmarked");
                this.hostBytes = convertHost.getBytes("UnicodeLittleUnmarked");
                this.userBytes = str3.getBytes("UnicodeLittleUnmarked");
            } catch (UnsupportedEncodingException e10) {
                throw new NTLMEngineException("Unicode not supported: " + e10.getMessage(), e10);
            }
        }

        @Override // org.apache.http.impl.auth.NTLMEngineImpl.NTLMMessage
        public String getResponse() {
            int length = this.ntResp.length;
            int length2 = this.lmResp.length;
            int length3 = this.domainBytes.length;
            int length4 = this.hostBytes.length;
            int length5 = this.userBytes.length;
            int i10 = length2 + 64;
            int i11 = i10 + length;
            int i12 = i11 + length3;
            int i13 = i12 + length5;
            int i14 = i13 + length4 + 0;
            prepareResponse(i14, 3);
            addUShort(length2);
            addUShort(length2);
            addULong(64);
            addUShort(length);
            addUShort(length);
            addULong(i10);
            addUShort(length3);
            addUShort(length3);
            addULong(i11);
            addUShort(length5);
            addUShort(length5);
            addULong(i12);
            addUShort(length4);
            addUShort(length4);
            addULong(i13);
            addULong(0);
            addULong(i14);
            int i15 = this.type2Flags;
            addULong((i15 & NTLMEngineImpl.FLAG_NEGOTIATE_ALWAYS_SIGN) | (524288 & i15) | 536871429 | (i15 & 16) | (i15 & 32) | (1073741824 & i15));
            addBytes(this.lmResp);
            addBytes(this.ntResp);
            addBytes(this.domainBytes);
            addBytes(this.userBytes);
            addBytes(this.hostBytes);
            return super.getResponse();
        }
    }

    static {
        SecureRandom secureRandom;
        try {
            secureRandom = SecureRandom.getInstance("SHA1PRNG");
        } catch (Exception unused) {
            secureRandom = null;
        }
        RND_GEN = secureRandom;
        byte[] bytes = EncodingUtils.getBytes("NTLMSSP", "ASCII");
        byte[] bArr = new byte[bytes.length + 1];
        SIGNATURE = bArr;
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        SIGNATURE[bytes.length] = 0;
    }

    public static int F(int i10, int i11, int i12) {
        return ((i10 ^ (-1)) & i12) | (i11 & i10);
    }

    public static int G(int i10, int i11, int i12) {
        return (i10 & i12) | (i10 & i11) | (i11 & i12);
    }

    public static int H(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    public static /* synthetic */ byte[] access$600() throws NTLMEngineException {
        return makeRandomChallenge();
    }

    public static /* synthetic */ byte[] access$700() throws NTLMEngineException {
        return makeNTLM2RandomChallenge();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertDomain(String str) {
        return stripDotSuffix(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String convertHost(String str) {
        return stripDotSuffix(str);
    }

    private static byte[] createBlob(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = {1, 1, 0, 0};
        byte[] bArr4 = {0, 0, 0, 0};
        byte[] bArr5 = {0, 0, 0, 0};
        long currentTimeMillis = (System.currentTimeMillis() + 11644473600000L) * 10000;
        byte[] bArr6 = new byte[8];
        for (int i10 = 0; i10 < 8; i10++) {
            bArr6[i10] = (byte) currentTimeMillis;
            currentTimeMillis >>>= 8;
        }
        byte[] bArr7 = new byte[bArr2.length + 28];
        System.arraycopy(bArr3, 0, bArr7, 0, 4);
        System.arraycopy(bArr4, 0, bArr7, 4, 4);
        System.arraycopy(bArr6, 0, bArr7, 8, 8);
        System.arraycopy(bArr, 0, bArr7, 16, 8);
        System.arraycopy(bArr5, 0, bArr7, 24, 4);
        System.arraycopy(bArr2, 0, bArr7, 28, bArr2.length);
        return bArr7;
    }

    private static Key createDESKey(byte[] bArr, int i10) {
        byte[] bArr2 = new byte[7];
        System.arraycopy(bArr, i10, bArr2, 0, 7);
        byte[] bArr3 = {bArr2[0], (byte) ((bArr2[0] << 7) | ((bArr2[1] & 255) >>> 1)), (byte) ((bArr2[1] << 6) | ((bArr2[2] & 255) >>> 2)), (byte) ((bArr2[2] << 5) | ((bArr2[3] & 255) >>> 3)), (byte) ((bArr2[3] << 4) | ((bArr2[4] & 255) >>> 4)), (byte) ((bArr2[4] << 3) | ((bArr2[5] & 255) >>> 5)), (byte) ((bArr2[5] << 2) | ((bArr2[6] & 255) >>> 6)), (byte) (bArr2[6] << 1)};
        oddParity(bArr3);
        return new SecretKeySpec(bArr3, "DES");
    }

    public static byte[] getLMResponse(String str, byte[] bArr) throws NTLMEngineException {
        return lmResponse(lmHash(str), bArr);
    }

    public static byte[] getLMv2Response(String str, String str2, String str3, byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        return lmv2Response(ntlmv2Hash(str, str2, str3), bArr, bArr2);
    }

    public static byte[] getNTLM2SessionResponse(String str, byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            byte[] ntlmHash = ntlmHash(str);
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            messageDigest.update(bArr2);
            byte[] digest = messageDigest.digest();
            byte[] bArr3 = new byte[8];
            System.arraycopy(digest, 0, bArr3, 0, 8);
            return lmResponse(ntlmHash, bArr3);
        } catch (Exception e10) {
            if (e10 instanceof NTLMEngineException) {
                throw ((NTLMEngineException) e10);
            }
            throw new NTLMEngineException(e10.getMessage(), e10);
        }
    }

    public static byte[] getNTLMResponse(String str, byte[] bArr) throws NTLMEngineException {
        return lmResponse(ntlmHash(str), bArr);
    }

    public static byte[] getNTLMv2Response(String str, String str2, String str3, byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        return lmv2Response(ntlmv2Hash(str, str2, str3), bArr, createBlob(bArr2, bArr3));
    }

    private static byte[] lmHash(String str) throws NTLMEngineException {
        try {
            byte[] bytes = str.toUpperCase().getBytes("US-ASCII");
            byte[] bArr = new byte[14];
            System.arraycopy(bytes, 0, bArr, 0, Math.min(bytes.length, 14));
            Key createDESKey = createDESKey(bArr, 0);
            Key createDESKey2 = createDESKey(bArr, 7);
            byte[] bytes2 = "KGS!@#$%".getBytes("US-ASCII");
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, createDESKey);
            byte[] doFinal = cipher.doFinal(bytes2);
            cipher.init(1, createDESKey2);
            byte[] doFinal2 = cipher.doFinal(bytes2);
            byte[] bArr2 = new byte[16];
            System.arraycopy(doFinal, 0, bArr2, 0, 8);
            System.arraycopy(doFinal2, 0, bArr2, 8, 8);
            return bArr2;
        } catch (Exception e10) {
            throw new NTLMEngineException(e10.getMessage(), e10);
        }
    }

    private static byte[] lmResponse(byte[] bArr, byte[] bArr2) throws NTLMEngineException {
        try {
            byte[] bArr3 = new byte[21];
            System.arraycopy(bArr, 0, bArr3, 0, 16);
            Key createDESKey = createDESKey(bArr3, 0);
            Key createDESKey2 = createDESKey(bArr3, 7);
            Key createDESKey3 = createDESKey(bArr3, 14);
            Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
            cipher.init(1, createDESKey);
            byte[] doFinal = cipher.doFinal(bArr2);
            cipher.init(1, createDESKey2);
            byte[] doFinal2 = cipher.doFinal(bArr2);
            cipher.init(1, createDESKey3);
            byte[] doFinal3 = cipher.doFinal(bArr2);
            byte[] bArr4 = new byte[24];
            System.arraycopy(doFinal, 0, bArr4, 0, 8);
            System.arraycopy(doFinal2, 0, bArr4, 8, 8);
            System.arraycopy(doFinal3, 0, bArr4, 16, 8);
            return bArr4;
        } catch (Exception e10) {
            throw new NTLMEngineException(e10.getMessage(), e10);
        }
    }

    private static byte[] lmv2Response(byte[] bArr, byte[] bArr2, byte[] bArr3) throws NTLMEngineException {
        HMACMD5 hmacmd5 = new HMACMD5(bArr);
        hmacmd5.update(bArr2);
        hmacmd5.update(bArr3);
        byte[] output = hmacmd5.getOutput();
        byte[] bArr4 = new byte[output.length + bArr3.length];
        System.arraycopy(output, 0, bArr4, 0, output.length);
        System.arraycopy(bArr3, 0, bArr4, output.length, bArr3.length);
        return bArr4;
    }

    private static byte[] makeNTLM2RandomChallenge() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom != null) {
            byte[] bArr = new byte[24];
            synchronized (secureRandom) {
                secureRandom.nextBytes(bArr);
            }
            Arrays.fill(bArr, 8, 24, (byte) 0);
            return bArr;
        }
        throw new NTLMEngineException("Random generator not available");
    }

    private static byte[] makeRandomChallenge() throws NTLMEngineException {
        SecureRandom secureRandom = RND_GEN;
        if (secureRandom != null) {
            byte[] bArr = new byte[8];
            synchronized (secureRandom) {
                secureRandom.nextBytes(bArr);
            }
            return bArr;
        }
        throw new NTLMEngineException("Random generator not available");
    }

    private static byte[] ntlmHash(String str) throws NTLMEngineException {
        try {
            byte[] bytes = str.getBytes("UnicodeLittleUnmarked");
            MD4 md4 = new MD4();
            md4.update(bytes);
            return md4.getOutput();
        } catch (UnsupportedEncodingException e10) {
            throw new NTLMEngineException("Unicode not supported: " + e10.getMessage(), e10);
        }
    }

    private static byte[] ntlmv2Hash(String str, String str2, String str3) throws NTLMEngineException {
        try {
            HMACMD5 hmacmd5 = new HMACMD5(ntlmHash(str3));
            hmacmd5.update(str2.toUpperCase().getBytes("UnicodeLittleUnmarked"));
            hmacmd5.update(str.getBytes("UnicodeLittleUnmarked"));
            return hmacmd5.getOutput();
        } catch (UnsupportedEncodingException e10) {
            throw new NTLMEngineException("Unicode not supported! " + e10.getMessage(), e10);
        }
    }

    private static void oddParity(byte[] bArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b10 = bArr[i10];
            if ((((b10 >>> 1) ^ ((((((b10 >>> 7) ^ (b10 >>> 6)) ^ (b10 >>> 5)) ^ (b10 >>> 4)) ^ (b10 >>> 3)) ^ (b10 >>> 2))) & 1) == 0) {
                bArr[i10] = (byte) (bArr[i10] | 1);
            } else {
                bArr[i10] = (byte) (bArr[i10] & (-2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] readSecurityBuffer(byte[] bArr, int i10) throws NTLMEngineException {
        int readUShort = readUShort(bArr, i10);
        int readULong = readULong(bArr, i10 + 4);
        if (bArr.length >= readULong + readUShort) {
            byte[] bArr2 = new byte[readUShort];
            System.arraycopy(bArr, readULong, bArr2, 0, readUShort);
            return bArr2;
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for data item");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readULong(byte[] bArr, int i10) throws NTLMEngineException {
        if (bArr.length >= i10 + 4) {
            return ((bArr[i10 + 3] & 255) << 24) | (bArr[i10] & 255) | ((bArr[i10 + 1] & 255) << 8) | ((bArr[i10 + 2] & 255) << 16);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for DWORD");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readUShort(byte[] bArr, int i10) throws NTLMEngineException {
        if (bArr.length >= i10 + 2) {
            return ((bArr[i10 + 1] & 255) << 8) | (bArr[i10] & 255);
        }
        throw new NTLMEngineException("NTLM authentication - buffer too small for WORD");
    }

    public static int rotintlft(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    private static String stripDotSuffix(String str) {
        int indexOf = str.indexOf(".");
        return indexOf != -1 ? str.substring(0, indexOf) : str;
    }

    public static void writeULong(byte[] bArr, int i10, int i11) {
        bArr[i11] = (byte) (i10 & BaseProgressIndicator.MAX_ALPHA);
        bArr[i11 + 1] = (byte) ((i10 >> 8) & BaseProgressIndicator.MAX_ALPHA);
        bArr[i11 + 2] = (byte) ((i10 >> 16) & BaseProgressIndicator.MAX_ALPHA);
        bArr[i11 + 3] = (byte) ((i10 >> 24) & BaseProgressIndicator.MAX_ALPHA);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType1Msg(String str, String str2) throws NTLMEngineException {
        return getType1Message(str2, str);
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType3Msg(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        Type2Message type2Message = new Type2Message(str5);
        return getType3Message(str, str2, str4, str3, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
    }

    public String getCredentialCharset() {
        return this.credentialCharset;
    }

    public final String getResponseFor(String str, String str2, String str3, String str4, String str5) throws NTLMEngineException {
        if (str != null && !str.trim().equals("")) {
            Type2Message type2Message = new Type2Message(str);
            return getType3Message(str2, str3, str4, str5, type2Message.getChallenge(), type2Message.getFlags(), type2Message.getTarget(), type2Message.getTargetInfo());
        }
        return getType1Message(str4, str5);
    }

    public String getType1Message(String str, String str2) throws NTLMEngineException {
        return new Type1Message(str2, str).getResponse();
    }

    public String getType3Message(String str, String str2, String str3, String str4, byte[] bArr, int i10, String str5, byte[] bArr2) throws NTLMEngineException {
        return new Type3Message(str4, str3, str, str2, bArr, i10, str5, bArr2).getResponse();
    }

    public void setCredentialCharset(String str) {
        this.credentialCharset = str;
    }

    /* loaded from: classes2.dex */
    public static class NTLMMessage {
        private int currentOutputPosition;
        private byte[] messageContents;

        public NTLMMessage() {
            this.messageContents = null;
            this.currentOutputPosition = 0;
        }

        public void addByte(byte b10) {
            byte[] bArr = this.messageContents;
            int i10 = this.currentOutputPosition;
            bArr[i10] = b10;
            this.currentOutputPosition = i10 + 1;
        }

        public void addBytes(byte[] bArr) {
            for (byte b10 : bArr) {
                byte[] bArr2 = this.messageContents;
                int i10 = this.currentOutputPosition;
                bArr2[i10] = b10;
                this.currentOutputPosition = i10 + 1;
            }
        }

        public void addULong(int i10) {
            addByte((byte) (i10 & BaseProgressIndicator.MAX_ALPHA));
            addByte((byte) ((i10 >> 8) & BaseProgressIndicator.MAX_ALPHA));
            addByte((byte) ((i10 >> 16) & BaseProgressIndicator.MAX_ALPHA));
            addByte((byte) ((i10 >> 24) & BaseProgressIndicator.MAX_ALPHA));
        }

        public void addUShort(int i10) {
            addByte((byte) (i10 & BaseProgressIndicator.MAX_ALPHA));
            addByte((byte) ((i10 >> 8) & BaseProgressIndicator.MAX_ALPHA));
        }

        public int getMessageLength() {
            return this.currentOutputPosition;
        }

        public int getPreambleLength() {
            return NTLMEngineImpl.SIGNATURE.length + 4;
        }

        public String getResponse() {
            byte[] bArr = this.messageContents;
            int length = bArr.length;
            int i10 = this.currentOutputPosition;
            if (length > i10) {
                bArr = new byte[i10];
                for (int i11 = 0; i11 < this.currentOutputPosition; i11++) {
                    bArr[i11] = this.messageContents[i11];
                }
            }
            return EncodingUtils.getAsciiString(Base64.encodeBase64(bArr));
        }

        public void prepareResponse(int i10, int i11) {
            this.messageContents = new byte[i10];
            this.currentOutputPosition = 0;
            addBytes(NTLMEngineImpl.SIGNATURE);
            addULong(i11);
        }

        public byte readByte(int i10) throws NTLMEngineException {
            byte[] bArr = this.messageContents;
            if (bArr.length >= i10 + 1) {
                return bArr[i10];
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        public void readBytes(byte[] bArr, int i10) throws NTLMEngineException {
            byte[] bArr2 = this.messageContents;
            if (bArr2.length >= bArr.length + i10) {
                System.arraycopy(bArr2, i10, bArr, 0, bArr.length);
                return;
            }
            throw new NTLMEngineException("NTLM: Message too short");
        }

        public byte[] readSecurityBuffer(int i10) throws NTLMEngineException {
            return NTLMEngineImpl.readSecurityBuffer(this.messageContents, i10);
        }

        public int readULong(int i10) throws NTLMEngineException {
            return NTLMEngineImpl.readULong(this.messageContents, i10);
        }

        public int readUShort(int i10) throws NTLMEngineException {
            return NTLMEngineImpl.readUShort(this.messageContents, i10);
        }

        public NTLMMessage(String str, int i10) throws NTLMEngineException {
            this.messageContents = null;
            this.currentOutputPosition = 0;
            byte[] decodeBase64 = Base64.decodeBase64(EncodingUtils.getBytes(str, "ASCII"));
            this.messageContents = decodeBase64;
            if (decodeBase64.length >= NTLMEngineImpl.SIGNATURE.length) {
                for (int i11 = 0; i11 < NTLMEngineImpl.SIGNATURE.length; i11++) {
                    if (this.messageContents[i11] != NTLMEngineImpl.SIGNATURE[i11]) {
                        throw new NTLMEngineException("NTLM message expected - instead got unrecognized bytes");
                    }
                }
                int readULong = readULong(NTLMEngineImpl.SIGNATURE.length);
                if (readULong == i10) {
                    this.currentOutputPosition = this.messageContents.length;
                    return;
                }
                throw new NTLMEngineException("NTLM type " + Integer.toString(i10) + " message expected - instead got type " + Integer.toString(readULong));
            }
            throw new NTLMEngineException("NTLM message decoding error - packet too short");
        }
    }
}
