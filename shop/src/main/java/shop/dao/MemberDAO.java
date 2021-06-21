package shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import shop.model.CouponBean;
import shop.model.AddressBean;
import shop.model.CartBean;
import shop.model.HeartBean;
import shop.model.MemberBean;
import shop.model.OrderDetailBean;
import shop.model.ProductBean;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSession session;

	// 아이디 중복 체크
	public int checkMemberId(String id) throws Exception {
		int re = -1; // 사용 가능한 ID
		MemberBean mb = (MemberBean) session.selectOne("login_check", id);
		if (mb != null)
			re = 1; // 중복id
		return re;
	}

	// 회원 가입
	public void insertMember(MemberBean m) throws Exception {
		session.insert("member_register", m);
	}

	// 아이디 찾기
	public MemberBean findid(MemberBean idm) throws Exception {
		System.out.println("dao닉네임");
		System.out.println("아이디 :" + idm.getMember_id());
		return (MemberBean) session.selectOne("findid", idm);
	}

	// 비밀번호 찾기
	public MemberBean findpw(MemberBean pm) throws Exception {
		System.out.println("222");
		System.out.println("임시비밀번호 :" + pm.getPw());
		return (MemberBean) session.selectOne("findpw", pm);
	}

	// 비밀번호 저장
	public void updatepw(MemberBean mem) throws Exception {
		System.out.println("비번 저장2 : " + mem.getPw());
		session.update("updatepw", mem);
	}

	// 회원정보 수정
	public void updateMember(MemberBean mem) throws Exception {
		session.update("update_member", mem);
	}

	// 로그인 검사
	@Transactional
	public MemberBean userCheck(String loginId) throws Exception {
		return (MemberBean) session.selectOne("login_check", loginId);
	}

	// 관심상품 등록
	public int enrollLikey(HeartBean hb) throws Exception {
		return session.insert("enroll_likey", hb);
	}

	// 관심상품 등록 여부 확인 - 마이페이지
	public int likeyState(HeartBean hb) throws Exception {
		int state = -1; // 미등록 상태
		HeartBean result = (HeartBean) session.selectOne("likey_state", hb);
		if (result != null)
			state = 1; // 등록 상태
		return state;
	}

	// 관심상품 등록 여부 확인 - 상품리스트
	public List<HeartBean> getWishList(String id) throws Exception {
		return session.selectList("getWishList", id);
	}

	// 관심상품 등록 취소
	public int cancelLikey(HeartBean hb) throws Exception {
		return session.delete("cancel_likey", hb);
	}

	// 관심상품 리스트 가져오기
	public List<ProductBean> getLikeList(ProductBean product) throws Exception {
		return session.selectList("like_list", product);
	}

	// 회원정보수정 이메일
	public void updateEmail(MemberBean mb) throws Exception {
		System.out.println("비밀번호 저장 :" + mb.getEmail());
		session.update("update_member_email", mb);
	}

	// 회원정보삭제
	public void withdrawMember(MemberBean mb) throws Exception {
		System.out.println("회원삭제dao :" + mb.getMember_id());
		session.delete("deleteMember", mb);
	}

	// 쿠폰 등록
	public int addCoupon(CouponBean cp) throws Exception {
		return session.insert("addCoupon", cp);
	}

	// 쿠폰 개수 조회
	public int countCoupon(CouponBean cp) throws Exception {
		System.out.println("countCoupon_MemberDAO");
		int count = 0;
		count = ((Integer) session.selectOne("countCoupon", cp)).intValue();
		System.out.println("count_dao:" + count);
		return count;
	}

	// 쿠폰 리스트 조회
	public List<CouponBean> getcouponList(CouponBean cp) throws Exception {
		System.out.println("couponList_MemberDAO");
		System.out.println(cp.getMember_id());
		return session.selectList("couponList", cp);
	}

	// 마케팅 동의
	public MemberBean emailCheck(MemberBean member) throws Exception {
		return (MemberBean) session.selectOne("email_check", member);
	}
	
	// 관리자 쿠폰 생성
	public int createCoupon(CouponBean cp) throws Exception{
		return session.insert("createCoupon", cp);
	}

	// 후보 배송지 조회
	public List<AddressBean> addressList(AddressBean add) throws Exception {
		System.out.println("DAO");
		return session.selectList("checkAddress", add);

	}

	// 기본 배송지 조회
	public AddressBean addressCheck(String id) {
		return (AddressBean) session.selectOne("checkAddressFromId", id);
	}

	// 기본 배송지를 후보 배송지로 변경
	public void updateAddressState0(String id) {
		session.update("updateAddressState0", id);
	}

	// 후보 배송지를 기본 배송지로 변경
	public void updateAddressState1(AddressBean add) {
		session.update("updateAddressState1", add);
	}

	
	// 쿠폰 selectOne
	public CouponBean getCouponOne(int coupon_id) {
		CouponBean coupon = session.selectOne("memberns.getCouponOne", coupon_id);
		return coupon;
	}
	
	//배송지 추가
	public void addressInsert(AddressBean address) throws Exception {
		System.out.println("배송지추가dao");
		session.insert("addressInsert",address);
	}
	//0619배송지 삭제
	public void addressDelete(AddressBean ab) throws Exception {
		System.out.println("배송지삭제dao ");
		session.delete("addressDelete", ab);
	}
	
	// 장바구니 추가
	public int addCart(CartBean cb) throws Exception{
		return session.insert("addCart", cb);
	}
	
	// 장바구니 리스트
	public List<ProductBean> getProductList(CartBean cb) throws Exception{
		return session.selectList("productcartlist", cb);
	}
	
	// 장바구니 order_detail 리스트
	public List<OrderDetailBean> getDetailList(CartBean cb) throws Exception{
		return session.selectList("detailList", cb);
	}
}
